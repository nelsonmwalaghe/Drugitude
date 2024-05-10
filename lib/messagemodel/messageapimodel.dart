import 'dart:convert';
import 'package:drugitudeleviosa/messagemodel/messagemodel.dart';
import 'package:http/http.dart' as http;





class MessageCall {
  var dataMessage = [];
  List<Message> resultsTitle = [];
  String fetchurlmessage =
      "https://script.googleusercontent.com/macros/echo?user_content_key=QiXyZWXBV7XvLNPY9JaVOt6ALlCPf5PTYljMEFfVEIMsAO0uEgbw2SfVAisvmMoEFqvXbvPePYsKrFWYsXFS8K7F53RD35eIm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnAKmp7sQ_AIErL1sALLe_PCCV67XeeeRUXTfXKBFSJhhhuTOIN5umMkvq1vgvM-QvJIp0FuOalmu27CF7eIKcaxvi7zz98mpONz9Jw9Md8uu&lib=Mr2hpyg-TS0AVPcT15HF8WcOfU6_gdlge";

  Future<List<Message>> getMessage(String? query) async
  {
    var url = Uri.parse(fetchurlmessage);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        dataMessage = json.decode(response.body);
        resultsTitle = dataMessage.map((e) => Message.fromJson(e)).toList();
        if(query != null){
          resultsTitle = resultsTitle.where((element) => element.title.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {
      }
    } on Exception catch (e) {
      ('error: $e');
    }
    return resultsTitle;
  }




}
