import 'dart:convert';
import 'package:http/http.dart' as http;

import '../drugList_call_model/drugList_Model.dart';
import '../drugList_call_model/drugList_brandName_model.dart';
// Note This is innName
// data - innName
// fetchurl - innName
// results - innName


class FetchDrug_brandName {
  var data_brandName = [];
  List<DrugListBrandName> results_brandName = [];
  String fetchurl_brandName =
      "https://script.google.com/macros/s/AKfycbwbilGtDRgZYonnsfKb38ZQaWkEbxILJszhTOWREp4NXLpeBo2W9Wmw8x5loIpo2PQm/exec";

  Future<List<DrugListBrandName>> getDrugList_brandName(String? query) async
  {
    var url = Uri.parse(fetchurl_brandName);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        data_brandName = json.decode(response.body);
        results_brandName = data_brandName.map((e) => DrugListBrandName.fromJson(e)).toList();
        if(query != null){
          results_brandName = results_brandName.where((element) => element.medicineName.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {
        print('api error');
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results_brandName;
  }



// {
//   var url = Uri.parse(fetchurl);
//   try {
//     var response = await http.get(url);
//     if (response.statusCode == 200) {
//       data = json.decode(response.body);
//       results = data.map((e) => DrugList.fromJson(e)).toList();
//       if(query != null){
//         results = results.where((element) => element.innName!.toLowerCase().contains(query.toLowerCase())).toList();
//       }
//     } else {
//       print('api error');
//     }
//   } on Exception catch (e) {
//     print('error: $e');
//   }
//   return results;
// }
}
