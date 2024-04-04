import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../model/item_model.dart';
import 'dart:async';
import '../services/api.dart';

class ItemsProvider with ChangeNotifier {
  List<ItemModel> items = [];
  List<ItemModel> filteredItems = [];
  List<ItemModel> favoriteItems = [];

  Api api = Api();
  bool isFailed = false;
  bool isLoading = true;

  setLoading(bool value) {
    Timer(const Duration(milliseconds: 50), () {
      isLoading = value;
      notifyListeners();
    });
  }

  setFailed(bool value) {
    Timer(const Duration(milliseconds: 50), () {
      isFailed = value;
      notifyListeners();
    });
  }

  searchByTitle(String title) {
    filteredItems = items
        .where((element) =>
            element.title.toLowerCase().contains(title.toLowerCase()))
        .toList();

    notifyListeners();
  }

  fetchAllGamesFromApi() async {
    setLoading(true);
    var response = await api.get("https://www.freetogame.com/api/games", {});

    if (kDebugMode) {
      print("STATUS CODE : ${response.statusCode.toString()}");
      print("BODY : ${response.body}");
    }

    if (response.statusCode == 200) {
      setFailed(false);
      items.clear();
      var decodedData = json.decode(response.body);

      for (var x in decodedData) {
        items.add(ItemModel.fromJson(x));
      }
      // setState(() {});
      notifyListeners();
    } else {
      setFailed(true);
    }
    setLoading(false);
  }
}
