import 'dart:convert';
import 'package:http/http.dart' as http;

import '../drugListCallModel/druglistdbmodel.dart';
import 'local_database.dart';
class DrugsCodexRApi{
  static Future<bool> getLatestDrugs() async{
    String codexrurl = "https://drugitudeapi.ridcoltd.co.ke/api/drugitudecodex";

    try{
    var response = await http.get(Uri.parse(codexrurl));
    if(response.statusCode ==200) {
      var drugscodexr = jsonDecode(response.body);
      for (var d in drugscodexr){
        var druglistdb = DrugListDB.fromJson(d);
        // drugscodexr.add(d(id: 'id', category: 'category', medicineName: 'medicineName', therapeuticArea: 'therapeuticArea',
        //     inn_name: 'inn_name', activeSubstance: 'activeSubstance', activeSubstanceStrengthPerDose: 'activeSubstanceStrengthPerDose',
        //     dosageForm: 'dosageForm', routeName: 'routeName', shelfLife: 'shelfLife', productImageUrl: 'productImageUrl', localForeign: 'localForeign',
        //     approxRetailPrice: 'approxRetailPrice', authorisationStatus: 'authorisationStatus', atccode: 'atccode',
        //     localRepresentativeHolderCompanyName: 'localRepresentativeHolderCompanyName',
        //     marketingAuthorisationHolderorCompanyName: 'marketingAuthorisationHolderorCompanyName',
        //     humanPharmacotherapeuticGroup: 'humanPharmacotherapeuticGroup', conditionOrIndication: 'conditionOrIndication',
        //     contraindicationOrWarningsOrPrecautions: 'contraindicationOrWarningsOrPrecautions', moaPhamacology: 'moaPhamacology',
        //     excipientsList: 'excipientsList', url: 'url', verifiedInfo: 'verifiedInfo'));
        
        //save in database
        LocalDatabase.insertDrugs(druglistdb).toString();

      }
      await LocalDatabase.insertSavedTime(0);
      return true;
    }else{
      print('Error in fetching api ${response.statusCode}');
      return false;
    }
    } catch (e) {
      print(e);
      return true;
        }
  }
}





//
// class DrugCodexRDBApi {
//   var datacodexr = [];
//   List<DrugListDB> resultsDB = [];
//   String fetchcoderapiurl =
//       "https://drugitudeapi.ridcoltd.co.ke/api/drugitudecodex";
//   Future<List<DrugListDB>> getLatestDrugListDB() async {
//     var url = Uri.parse(fetchcoderapiurl);
//     var response = await http.get(url);
//
//     if (response.statusCode == 200) {
//       var datacodexr = json.decode(response.body);
//       resultsDB =
//       datacodexr.map((e) => DrugListDB.fromJson(e)).toString() as List<
//           DrugListDB>;
//       //   save it inside local database
//       LocalDatabase.insertDrugs(datacodexr);
//     } else {}
//     return resultsDB;
//   }
// }



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