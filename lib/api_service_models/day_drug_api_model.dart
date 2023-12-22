import 'dart:convert';
import 'package:http/http.dart' as http;

import '../drugList_call_model/drugList_Model.dart';
import '../drugList_call_model/drugList_brandName_model.dart';
import '../drugList_call_model/drug_of_the_day_input_model.dart';
import 'package:intl/intl.dart';
// Note This is innName
// data - innName
// fetchurl - innName
// results - innName


class FetchDrug_DayDrug {
  var now = new DateTime.now();
  var data_DayDrug = [];
  List<DayDrug> results_DayDrug = [];
  // results_DayDrug.where();
  String fetchurl_DayDrug =
      "https://script.google.com/macros/s/AKfycbxdxDT6Gs3g4m2lpJZteO8qsbtOD0KMI_YN_L5Vl_fyMk2eLMfc1pFMrOyXCU2c-4oIMw/exec";

  Future<List<DayDrug>> getDayDrug(String? query) async
  {
    var url = Uri.parse(fetchurl_DayDrug);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        data_DayDrug = json.decode(response.body);
        results_DayDrug = data_DayDrug.map((e) => DayDrug.fromJson(e)).toList();
        if(query != null){
          results_DayDrug = results_DayDrug.where((element) => element.drugDaydate.toIso8601String().contains(DateTime.now() as Pattern)).toList();
        }
      } else {
        print('api error');
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results_DayDrug;
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
