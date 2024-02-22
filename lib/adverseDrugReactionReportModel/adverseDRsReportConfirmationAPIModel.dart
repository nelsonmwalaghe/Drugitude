import 'dart:convert';
import 'package:http/http.dart' as http;
import 'adrsreportConfirmation.dart';

class FetchADRSList {
  var dataADRSList = [];
  List<AdverseDRsReportConfirmationList> resultsADRSList = [];
  String fetchurlADRSList =
      "https://script.google.com/macros/s/AKfycbyTicf6_BirjCd5avp_dCTDGKsoeQUeSW0WXkNYQRnsr4fTJY2gGwlXrx-Def-VM_n8BA/exec";

  Future<List<AdverseDRsReportConfirmationList>> getADRSList(String? query) async
  {

      var url = Uri.parse(fetchurlADRSList);

      var response = await http.get(url);
      if (response.statusCode == 200) {
        dataADRSList = json.decode(response.body);
        resultsADRSList =
            dataADRSList.map((e) => AdverseDRsReportConfirmationList.fromJson(e))
                .toList();
        if (query != null) {
          resultsADRSList = resultsADRSList.where((element) =>
              element.reportTitle.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }
      } else {}

    return resultsADRSList;
  }
}
