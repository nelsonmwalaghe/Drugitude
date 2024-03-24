import 'dart:convert';
import 'package:http/http.dart' as http;
import '../drugListCallModel/drugofthedayinputmodel.dart';




class FetchDrugDayDrug {
  var dataDayDrug = [];
  List<DayDrug> resultsDayDrug = [];
  // results_DayDrug.where();
  String fetchurlDayDrug =
      "https://script.googleusercontent.com/macros/echo?user_content_key=o4QeY3MrZeHvP3j3nMlxA9HtfXLS-Q5BAnODagM0uIvlbJzuqtp4z3J9aH1LJUY4T8OSR9cvynk8cgz7eXLWtvYpJK_b7L0wm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnHBo-ChCqjN8Kc5rU-irP6B2_61B7mtEptlTaJ0iCZ7ynFonTSsYYLn0n8Quem0VbtGXadBbhIbbXbySVtqqobzEhPn-4zCdBtz9Jw9Md8uu&lib=MHYLI_QlBq6Ca8oFBC4SGd8OfU6_gdlge";
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
