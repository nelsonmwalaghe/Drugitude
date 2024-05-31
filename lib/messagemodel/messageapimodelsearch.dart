import 'dart:convert';
import 'package:drugitudeleviosa/messagemodel/messagemodel.dart';
import 'package:http/http.dart' as http;





class MessageCallPriority {
  var dataMessage = [];
  List<Message> resultsPriority = [];
  String fetchurlmessage =
      "https://script.googleusercontent.com/macros/echo?user_content_key=MeIyRc8v4XdMk_DULLxWIEefAT7ObYDQaPxmaTvsd4cv7X26YXlDu72qTn7_1mBAzxLtH5XkdwDBTySY2M6YK8AP6olRm8dkm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnBl-zqI-oKsPCJjvXLhuYePf6vi4-HhgLLUZNR2Zzvd5THDe2NuIN5H_AVlaBcS0VHb2fPI26l5UKTdNgM0K907VB4xK_oOuONz9Jw9Md8uu&lib=Mr2hpyg-TS0AVPcT15HF8WcOfU6_gdlge";

  Future<List<Message>> getMessage(String? query) async
  {
    var url = Uri.parse(fetchurlmessage);
    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        dataMessage = json.decode(response.body);
        resultsPriority = dataMessage.map((e) => Message.fromJson(e)).toList();
        if(query != null){
          resultsPriority = resultsPriority.where((element) => element.priority.toLowerCase().contains(query.toLowerCase())).toList();
        }
      } else {
      }
    } on Exception catch (e) {
      ('error: $e');
    }
    return resultsPriority;
  }




}
