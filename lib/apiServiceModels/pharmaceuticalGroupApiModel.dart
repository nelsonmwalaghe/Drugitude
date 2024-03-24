import 'dart:convert';
import 'package:http/http.dart' as http;

import '../drugListCallModel/drugListPharmaceuticalGroupModel.dart';



class FetchDrugphramGroup {
  var dataphramGroup = [];
  List<DrugListPharmGroup> resultsphramGroup = [];
  String fetchurlphramGroup =
      "https://script.googleusercontent.com/macros/echo?user_content_key=LwoodWt2qCHtrfiRGAPzdexbq4v3iQaV8Yp-4VKygFqF_4UPyIlJw8Xtk8pqptj7_WHAmKWPbqcVNJXTdlq1OxG9rGUULxcYm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnC-WBSfHvHiPlTxuiQTcpJV8zQ0h6AzlK1jesKRgfxboSAqlJULr7ha7-NeVwkjEwXHNdINEWyWXsgMXua6DKx-fJMRCcv9cYw&lib=Meh_bsooRvK-e94zE4gUzGohLs1YLDbPg";

  Future<List<DrugListPharmGroup>> getDrugListphramGroup(String? query) async
  {
    var url = Uri.parse(fetchurlphramGroup);

      var response = await http.get(url);
      if (response.statusCode == 200) {
        dataphramGroup = json.decode(response.body);
        resultsphramGroup = dataphramGroup.map((e) => DrugListPharmGroup.fromJson(e)).toList();
        if(query != null){
          resultsphramGroup = resultsphramGroup.where((element) => element.humanPharmacotherapeuticGroup!.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {

      }
    return resultsphramGroup;
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
