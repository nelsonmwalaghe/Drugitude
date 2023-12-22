import 'dart:convert';
import 'package:drugitudeleviosa/drugList_call_model/drugList_therapueticArea_Model.dart';
import 'package:http/http.dart' as http;

// import '../drugList_call_model/drugList_Model.dart';
// import '../drugList_call_model/drugList_brandName_model.dart';
// // Note This is innName
// // data - innName
// // fetchurl - innName
// // results - innName


class FetchDrug_therapueticArea {
  var data_therapueticArea = [];
  List<DrugListTherapueticArea> results_therapueticArea = [];
  String fetchurl_therapueticArea =
      "https://script.google.com/macros/s/AKfycbwbilGtDRgZYonnsfKb38ZQaWkEbxILJszhTOWREp4NXLpeBo2W9Wmw8x5loIpo2PQm/exec";

  Future<List<DrugListTherapueticArea>> getDrugList_therapueticArea(String? query) async
  {
    var url = Uri.parse(fetchurl_therapueticArea);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        data_therapueticArea = json.decode(response.body);
        results_therapueticArea = data_therapueticArea.map((e) => DrugListTherapueticArea.fromJson(e)).toList();
        if(query != null){
          results_therapueticArea = results_therapueticArea.where((element) => element.therapeuticArea.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {
        print('api error');
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results_therapueticArea;
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
