import 'dart:convert';

class ItemModel {
  int id;
  String title;
  String shortDescription;
  String gameUrl;
  String price;

  ItemModel({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.gameUrl,
    required this.price,
  });

  factory ItemModel.fromRawJson(String str) =>
      ItemModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        id: json["id"],
        title: json["title"],
        shortDescription: json["short_description"],
        gameUrl: json["game_url"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "short_description": shortDescription,
        "game_url": gameUrl,
        "price": price,
      };
}