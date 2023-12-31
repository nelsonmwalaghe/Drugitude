import 'dart:convert';
import 'package:http/http.dart' as http;
import '../drugListCallModel/drugofthedayinputmodel.dart';




class FetchDrugDayDrug {
  var dataDayDrug = [];
  List<DayDrug> resultsDayDrug = [];
  // results_DayDrug.where();
  String fetchurlDayDrug =
      "https://script.google.com/macros/s/AKfycbxdxDT6Gs3g4m2lpJZteO8qsbtOD0KMI_YN_L5Vl_fyMk2eLMfc1pFMrOyXCU2c-4oIMw/exec";

  Future<List<DayDrug>> getDayDrug(String? query) async
  {
    var url = Uri.parse(fetchurlDayDrug);

      var response = await http.get(url);
      if (response.statusCode == 200) {
        dataDayDrug = json.decode(response.body);
        resultsDayDrug = dataDayDrug.map((e) => DayDrug.fromJson(e)).toList();
        if(query != null){
          resultsDayDrug = resultsDayDrug.where((element) => element.medicineName.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {}
    return resultsDayDrug;
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
