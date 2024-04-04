import 'dart:convert';
import 'package:http/http.dart' as http;
import '../drugListCallModel/drugListModel.dart';



class FetchDrug {
  var data = [];
  List<DrugList> results = [];
  String fetchurl =
     "https://drugitudeapi.ridcoltd.co.ke/api/drugitudecodex";

  Future<List<DrugList>> getDrugList(String? query) async
  {
    var url = Uri.parse(fetchurl);

      var response = await http.get(url);
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => DrugList.fromJson(e)).toList();
        if(query != null){
          results = results.where((element) => element.innName.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {}
    return results;
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
