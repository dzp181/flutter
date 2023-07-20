// To parse this JSON data, do
//
//     final testModel = testModelFromJson(jsonString);

import 'dart:convert';

TestModel testModelFromJson(String str) => TestModel.fromJson(json.decode(str));

String testModelToJson(TestModel data) => json.encode(data.toJson());

class TestModel {
  String userId;
  int id;

  TestModel({
    required this.userId,
    required this.id,
  });

  factory TestModel.fromJson(Map<String, dynamic> json) => TestModel(
        userId: json["userId"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
      };
}
