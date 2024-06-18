import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import '../drugListCallModel/druglistdbmodel.dart';

class LocalDatabase {
//   create or open a new database
static Future<Database> createDatabase() async {
  return await openDatabase(
      "drug_codexR.db",
  version: 1,
  onCreate: (db, version) async {
    await db.execute(
        'CREATE TABLE codex ('
            'inn_name TEXT, category TEXT, medicineName TEXT, therapeuticArea TEXT,'
            'activeSubstance TEXT, activeSubstanceStrengthPerDose TEXT, dosageForm TEXT,'
            'routeName TEXT, shelfLife TEXT,productImageUrl TEXT, localForeign TEXT,'
            'approxRetailPrice TEXT, authorisationStatus TEXT, atccode TEXT,'
            'localRepresentativeHolderCompanyName TEXT, marketingAuthorisationHolderorCompanyName TEXT,'
            'humanPharmacotherapeuticGroup TEXT, conditionOrIndication TEXT, contraindicationOrWarningsOrPrecautions TEXT,'
            'moaPhamacology TEXT, excipientsList TEXT, url TEXT, verifiedInfo TEXT)');

    await db.execute('CREATE TABLE saved_time (page_no INTEGER PRIMARY KEY, lastSavedTime DATETIME)');
  }
  );
}
// insert new Drugs to the database
static Future insertDrugs(DrugListDB drugListDB) async {
  var db = await createDatabase();
  return await db.insert("codex", {
    "inn_name":drugListDB.inn_name,
    "category":drugListDB.category,
    "medicineName":drugListDB.medicineName,
    "therapeuticArea":drugListDB.therapeuticArea,
    "activeSubstance":drugListDB.activeSubstance,
    "activeSubstanceStrengthPerDose":drugListDB.activeSubstanceStrengthPerDose,
    "dosageForm":drugListDB.activeSubstanceStrengthPerDose,
    "routeName":drugListDB.routeName,
    "shelfLife":drugListDB.shelfLife,
    "productImageUrl":drugListDB.productImageUrl,
    "localForeign":drugListDB.localForeign,
    "approxRetailPrice":drugListDB.approxRetailPrice,
    "authorisationStatus":drugListDB.authorisationStatus,
    "atccode":drugListDB.atccode,
    "localRepresentativeHolderCompanyName":drugListDB.localRepresentativeHolderCompanyName,
    "marketingAuthorisationHolderorCompanyName":drugListDB.marketingAuthorisationHolderorCompanyName,
    "humanPharmacotherapeuticGroup":drugListDB.humanPharmacotherapeuticGroup,
    "conditionOrIndication":drugListDB.conditionOrIndication,
    "contraindicationOrWarningsOrPrecautions":drugListDB.contraindicationOrWarningsOrPrecautions,
    "moaPhamacology":drugListDB.moaPhamacology,
    "excipientsList":drugListDB.excipientsList,
    "url":drugListDB.url,
    "verifiedInfo":drugListDB.verifiedInfo,
  },
      conflictAlgorithm: ConflictAlgorithm.replace);
}

// read first 20 drugs in the Database
static Future <List<Map<String,dynamic>>> getAllDrugsDB() async {
    var db = await createDatabase();
    return await db.query(
      "codex",
      orderBy: 'medicineName ASC',
      limit:20000,
    );
  }
//   get more data but in limit of 20
  static Future <List<Map<String,dynamic>>> getMoreDrugsDB(int lastNo) async {
    var db = await createDatabase();
    return await db.query(
      "codex",
      orderBy: 'medicineName ASC',
      limit:0,
      offset:  lastNo
    );
  }
  // count the number of drugs inside database
static Future<int?> getDrugCodexRCount() async{
  var db = await createDatabase();
  return await Sqflite.firstIntValue(
      await db.rawQuery('SELECT COUNT(*) FROM codex'));
}
// search INN drugs
  static Future <List<Map<String,dynamic>>> searchAllINNDrugsDB(String query) async {
    var db = await createDatabase();
    return await db.query('codex', where: 'inn_name LIKE ?', whereArgs: ['%$query%']);
  }
// search Brand Drugs
  static Future <List<Map<String,dynamic>>> searchAllBrandDrugsDB(String query) async {
    var db = await createDatabase();
    return await db.query('codex', where: 'medicineName LIKE ?', whereArgs: ['%$query%']);
  }

  // search PharmGroup Drugs
  static Future <List<Map<String,dynamic>>> searchAllPharmGroupDrugsDB(String query) async {
    var db = await createDatabase();
    return await db.query('codex', where: 'humanPharmacotherapeuticGroup LIKE ?', whereArgs: ['%$query%']);
  }

  // search Therapuetic Area Drugs
  static Future <List<Map<String,dynamic>>> searchAllTherapueticAreaDrugsDB(String query) async {
    var db = await createDatabase();
    return await db.query('codex', where: 'therapeuticArea LIKE ?', whereArgs: ['%$query%']);
  }

//   WHERE name LIKE 'query%'
//   finds any value that start with "query"
//   WHERE name LIKE '%keyword'
//   finds any values that end with "query"
//   WHERE name LIKE '%query%'
//   finds any values that have 'query' in any position


//delete all drugs from local database
static Future deleteAllDrugs() async {
  var db = await createDatabase();
  return await db.delete('codex');
}

// INSERT time after saving to the database
static Future insertSavedTime(int pageNo) async {
  var db = await createDatabase();
  return await db.insert("saved_time", {'page_no':pageNo, "lastSavedTime":DateTime.now().toString()},
  conflictAlgorithm: ConflictAlgorithm.replace);
}

// get the saved time of each page
static Future <List<Map<String,dynamic>>> getSaveTime() async{
  var db = await createDatabase();
  var datasavedtime = db.query("saved_time");
  print(datasavedtime);
  return datasavedtime;
}

// delete the saved time table
static Future deleteSavedTime() async {
  var db = await createDatabase();

  return await db.delete("saved_time");


}
}