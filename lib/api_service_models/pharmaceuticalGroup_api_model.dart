import 'dart:convert';
import 'package:drugitudeleviosa/drugList_call_model/drugList_pharmaceutical_group_model.dart';
import 'package:drugitudeleviosa/drugList_call_model/drugList_therapueticArea_Model.dart';
import 'package:http/http.dart' as http;
import 'package:intl/date_symbol_data_http_request.dart';
// import '../drugList_call_model/drugList_Model.dart';
// import '../drugList_call_model/drugList_brandName_model.dart';
// // Note This is innName
// // data - innName
// // fetchurl - innName
// // results - innName


class FetchDrug_phramGroup {
  var data_phramGroup = [];
  List<DrugListPharmGroup> results_phramGroup = [];
  String fetchurl_phramGroup =
      "https://script.google.com/macros/s/AKfycbwbilGtDRgZYonnsfKb38ZQaWkEbxILJszhTOWREp4NXLpeBo2W9Wmw8x5loIpo2PQm/exec";

  Future<List<DrugListPharmGroup>> getDrugList_phramGroup(String? query) async
  {
    var url = Uri.parse(fetchurl_phramGroup);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        data_phramGroup = json.decode(response.body);
        results_phramGroup = data_phramGroup.map((e) => DrugListPharmGroup.fromJson(e)).toList();
        if(query != null){
          results_phramGroup = results_phramGroup.where((element) => element.humanPharmacotherapeuticGroup.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {
        print('api error');
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results_phramGroup;
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
