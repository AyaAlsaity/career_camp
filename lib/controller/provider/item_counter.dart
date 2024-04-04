import 'package:flutter/material.dart';

class ItemCountrProvider with ChangeNotifier {
   int count=1;
  initCount(){
    count=1;
    notifyListeners();
  }
  void add(){
    count++;
    notifyListeners();
  }

}