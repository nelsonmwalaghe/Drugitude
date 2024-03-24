import 'dart:convert';
import 'package:http/http.dart' as http;

import '../drugListCallModel/drugListTherapueticAreaModel.dart';

// import '../drugList_call_model/drugListModel.dart';
// import '../drugList_call_model/drugListbrandNamemodel.dart';
// // Note This is innName
// // data - innName
// // fetchurl - innName
// // results - innName


class FetchDrugTherapueticArea {
  var datatherapueticArea = [];
  List<DrugListTherapueticArea> resultsTherapueticArea = [];
  String fetchurlTherapueticArea =
      "https://script.google.com/macros/s/AKfycbx_LulT5i4DQUeQI82lV4i8BBFTA5tNRpK8vK0V8JcKL6xzoeR-XYa351ENjaVHphvA/exec";

  Future<List<DrugListTherapueticArea>> getDrugListTherapueticArea(String? query) async
  {
    var url = Uri.parse(fetchurlTherapueticArea);

      var response = await http.get(url);
      if (response.statusCode == 200) {
        datatherapueticArea = json.decode(response.body);
        resultsTherapueticArea = datatherapueticArea.map((e) => DrugListTherapueticArea.fromJson(e)).toList();
        if(query != null){
          resultsTherapueticArea = resultsTherapueticArea.where((element) => element.therapeuticArea!.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {
      }
    return resultsTherapueticArea;
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
