
import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';




class ApiDrugCodex_service{
  late Box dictionarybox;
  List dictionaryDrug = [];

  Future openBox() async {
    var dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    dictionarybox = await Hive.openBox('dictionaryDrug');
    return;
  }

  // var dataDayDrug = [];
  // List<DayDrug> resultsDayDrug = [];
  // // results_DayDrug.where();
  String fetchurldictionaryDrug =
      "https://drugitudeapi.ridcoltd.co.ke/api/drugitudecodex";
  // Future<List<DayDrug>> getDayDrug(String? query)

  Future<bool> getAlldictionaryDrug() async
  {
    await openBox();

    var url = Uri.parse(fetchurldictionaryDrug);

    try {

      var response = await http.get(url);
      var _jsonDecode = jsonDecode(response.body);

      await putData(_jsonDecode);

      // if (response.statusCode == 200) {
      //   dataDayDrug = json.decode(response.body);
      //   // // resultsDayDrug = dataDayDrug.map((e) => DayDrug.fromJson(e)).toList();
      //   // // if (query != null) {
      //   // //   resultsDayDrug = resultsDayDrug.where((element) =>
      //   // //       element.medicineName.toLowerCase().contains(query.toLowerCase()))
      //   // //       .toList();
      //   // }
      // }
    } catch (SocketException) {
      print('No Internet');
    }
    // return resultsDictionaryDrug;

    //*get data from DB
    var mydictionarymap = dictionarybox.toMap().values.toList();
    if(mydictionarymap.isEmpty){
      dictionaryDrug.add('empty');

    }else{
      dictionaryDrug = mydictionarymap;
    }
    return Future.value(true);
  }

  Future putData(dictionaryDrug) async {
    await dictionarybox.clear();
    //insert data
    for(var d in dictionaryDrug){
      dictionarybox.add(d);

    }
  }
}