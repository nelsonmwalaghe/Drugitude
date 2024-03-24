import 'dart:convert';
import 'package:http/http.dart' as http;
import '../drugListCallModel/drugListbrandNamemodel.dart';




class FetchDrugbrandName {
  var databrandName = [];
  List<DrugListBrandName> resultsbrandName = [];
  String fetchurlbrandName =
      "https://script.googleusercontent.com/macros/echo?user_content_key=LwoodWt2qCHtrfiRGAPzdexbq4v3iQaV8Yp-4VKygFqF_4UPyIlJw8Xtk8pqptj7_WHAmKWPbqcVNJXTdlq1OxG9rGUULxcYm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnC-WBSfHvHiPlTxuiQTcpJV8zQ0h6AzlK1jesKRgfxboSAqlJULr7ha7-NeVwkjEwXHNdINEWyWXsgMXua6DKx-fJMRCcv9cYw&lib=Meh_bsooRvK-e94zE4gUzGohLs1YLDbPg";

  Future<List<DrugListBrandName>> getDrugListbrandName(String? query) async
  {
    var url = Uri.parse(fetchurlbrandName);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        databrandName = json.decode(response.body);
        resultsbrandName = databrandName.map((e) => DrugListBrandName.fromJson(e)).toList();
        if(query != null){
          resultsbrandName = resultsbrandName.where((element) => element.medicineName!.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {
      }
    } on Exception catch (e) {
      ('error: $e');
    }
    return resultsbrandName;
  }




}
