import 'dart:convert';
import 'package:http/http.dart' as http;
import '../drugListCallModel/drugofthedayinputmodel.dart';




class FetchDrugDayDrug {
  var dataDayDrug = [];
  List<DayDrug> resultsDayDrug = [];
  // results_DayDrug.where();
  String fetchurlDayDrug =
     "https://script.googleusercontent.com/macros/echo?user_content_key=k2GV8n5g10F9YWYtjrEq76QbAoEjqjy6dzH7ZfxeE0CaDTBqS5PHsAFgqjjAB319Bsj1XpaJ-NLLRqnAxnpgwp8srJ0IPb1fm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnEfPoOkJ4KJ9CUPtkOt7ll7tbuoseAxFgFBjqoDwTnasXt0A3CfpBHFW5lV__qQ4sNpNftFoDGmS_0cPKw3o00IwPVpi3G2oytz9Jw9Md8uu&lib=MHYLI_QlBq6Ca8oFBC4SGd8OfU6_gdlge";
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
