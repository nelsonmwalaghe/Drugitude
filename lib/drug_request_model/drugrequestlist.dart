// To parse this JSON data, do
//
//     final drugRequestList = drugRequestListFromJson(jsonString);

import 'dart:convert';

List<DrugRequestList> drugRequestListFromJson(String str) => List<DrugRequestList>.from(json.decode(str).map((x) => DrugRequestList.fromJson(x)));

String drugRequestListToJson(List<DrugRequestList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DrugRequestList {
  int id;
  String brandName;
  String genericName;

  DrugRequestList({
    required this.id,
    required this.brandName,
    required this.genericName,
  });

  factory DrugRequestList.fromJson(Map<String, dynamic> json) => DrugRequestList(
    id: json["id"],
    brandName: json["brandName"],
    genericName: json["genericName"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "brandName": brandName,
    "genericName": genericName,
  };
}
