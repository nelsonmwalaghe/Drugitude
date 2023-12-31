import 'dart:convert';
import 'package:http/http.dart' as http;

import '../drugListCallModel/drugListbrandNamemodel.dart';




class FetchDrugbrandName {
  var databrandName = [];
  List<DrugListBrandName> resultsbrandName = [];
  String fetchurlbrandName =
      "https://script.google.com/macros/s/AKfycbwbilGtDRgZYonnsfKb38ZQaWkEbxILJszhTOWREp4NXLpeBo2W9Wmw8x5loIpo2PQm/exec";

  Future<List<DrugListBrandName>> getDrugListbrandName(String? query) async
  {
    var url = Uri.parse(fetchurlbrandName);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        databrandName = json.decode(response.body);
        resultsbrandName = databrandName.map((e) => DrugListBrandName.fromJson(e)).toList();
        if(query != null){
          resultsbrandName = resultsbrandName.where((element) => element.medicineName.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {
      }
    } on Exception catch (e) {
      ('error: $e');
    }
    return resultsbrandName;
  }




}
