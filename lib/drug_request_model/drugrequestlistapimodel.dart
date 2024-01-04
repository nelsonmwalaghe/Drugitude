import 'dart:convert';

import 'drugrequestlist.dart';
import 'package:http/http.dart' as http;

class FetchDrugRequestList {
  var datadrugrequestlist = [];
  List<DrugRequestList> resultsdrugrequestlist = [];
  String fetchurldrugrequestlist =
      "https://script.googleusercontent.com/macros/echo?user_content_key=A8IcnNMTPytZ6RlAqqwMY9cZ6eycTu9OEvcXsXEpQNOI8rJkOp8iCA9sQxk7QwV53YAotp4QPJnpn8AQisNWNE_LUgXiKKB9m5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnD3T2g29AtxytYeDBvX3ReXGL2-uSZQrrWyG5_eC2rz13enyLlt382VgM9lT9U8ozyheI05Vo8uJ691DR-Jc8CJjTkxO_ibbyw&lib=MpNdLqmDULeZDq4AmJH0T7YhLs1YLDbPg";

  Future<List<DrugRequestList>> getDrugRequestList(String? query) async
  {
    var url = Uri.parse(fetchurldrugrequestlist);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        datadrugrequestlist = json.decode(response.body);
        resultsdrugrequestlist = datadrugrequestlist.map((e) => DrugRequestList.fromJson(e)).toList();
        if(query != null){
          resultsdrugrequestlist = resultsdrugrequestlist.where((element) => element.genericName.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {
      }
    } on Exception catch (e) {
      ('error: $e');
    }
    return resultsdrugrequestlist;
  }




}
