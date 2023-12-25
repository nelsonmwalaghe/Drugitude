import'package:gsheets/gsheets.dart';

import 'drug_request_fields.dart';

class DrugRequestSheetsApi {
  static const _credentials = r'''
  {
  "type": "service_account",
  "project_id": "drugrequestdragitude",
  "private_key_id": "4cfe6a241751df015efc578090387ebd0495429f",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCckUmtUIZrXxQC\n+imf4Ql+HLADpf5RSlr31kwtBtHB3K5X41hArHY40TcEIuNP9UbfkvNkXEex9emP\nDaTFFKkmOkzg02U1WgaUho20q52jB5X+GfGl6Lmg5tlBIXdSbQdhxVaZyvqTceGr\nrBjX2BSQmZujPbQtpuTMYQZ9zzGLiu+Z8Q53i3HjcQGMqF8XLYZEVpdEs93sIBkt\n7efAXE77mkSDyJpX1PCiDESzbwG0cgrsCJUPCiTgDNkLcgY+Yww9jET56z1WLl4O\nDM0ZZiU4zPdHMewubIevZ/7J2nuMPHacU4bq5X0406nCeM5Q3H0S0d9/XrnsnYiV\nHJtWLlRLAgMBAAECggEAIDGv2LeKLGHsl4AhNwLrFMeJWfa0CLslYXjrSQbx8s8R\n+niBGStdU+mRSoRyAWsKG8b3zVc8VteeIxBHJU9OSNIMJN7THNlaKQhR8yimzXMt\n4IYtLlRgdzmAyue6xXQt5GjTmeQnClKMeOR2Z0vDTsiHPFXfytNakLwSvaPxKCQj\nMtA4iqL/FaTEVR8p0TQOovo8g+NhPJNLfcBuUIPMKUGDiI2uqMvFRlQq3iR22WOy\nuZZyRjGX3xhh1/HQRiiYf93lX+lHj9rnbzbHE+CKtDs9z0HBt4VBo4QFeKsMP4A5\nY7QT1mKADvU9+hIfqwYYr+ARjbtsS/loRPHR40nRYQKBgQDJB4k55p77HAGXMJcL\nsXETZmzJHjbgiqX7zatAPTIhfuuQr8GCRc10sZko+/+YTcLAjqCNqaFyrQjps3RG\nS0dWhb4yVei/FwvuEY4pUkjqstTdp5c64VH+K6LY6XG2dyUNrsu3rbslJxtgMWk5\nI+WMQtsTRjf/Bs8DHvhAMyfZtQKBgQDHYVQ86vob4vH/3bYCdt+iOZzqh3MXELFb\nIi42bQMu/JzUnYWgkmaoDDvEXRlzn8dM2RdB5NdyIRPf1g9f5xX115kWGgsDgZOE\n/pSOc3W0UNE7Y+MDfqqpkQlKG/kgrJm152x2g/DZ+qvOyOjL3Uv5vcnwNPQVj8HT\nrvDIdgI1/wKBgDmBQVzhvpqAQWg5SwvaP0lYZEgHr5T9tEtaYuFmX/+66bGixQz5\n4LK/1tslctDjdZFVe1Hqszc1jjYj0mAFSqvSaDzH3GNFOXFpbiwd0KPqcf/R3+3E\n5Ip7ewLnjFKwtFW8qaOqO719+VPD7qCcxx4fRcG2tW/rR65R3pumxoB9AoGAMuNF\nk9LJiUqQR6T36oMaqxYXVcjCeDWbfs4ni16hfGGfSaj2zTfwmZ2dt42njFpQjO2v\nwPK+hnOo1e2VuP2LHlcrzHdTLk7pLv2nPwB7H02tSYJCE8dFmcfZ3h9ro4pKJSJv\nDYS5eXlAVqPyvu25kYF+RB/P2Jz7dKLm89Mi11MCgYEAuCjGFfIApWfbStHnhGTG\nvFRG/Nd37bnP/lmCY5+C1ehn30QXyBOlwKm86TVNVrQfObulKai/lEwDV2eUyxKa\nDgxyjD8JGhLUMqcYgeztK6ulU7r8NtwfSblflgc0HImvyKXAIX7sUapaEdbfUNJ/\n96Bom+kyb2MASPYB8XfCgUc=\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheets@drugrequestdragitude.iam.gserviceaccount.com",
  "client_id": "101927227341131999815",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheets%40drugrequestdragitude.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}

  ''';
  static final _spreedsheetIdDrugRequest = '1b4Y0rDekq_pmJFExbVcFNRyeZ9tP0JoSXLl5OUdv0Jg';
  static final _gsheetsDrugRequest = GSheets(_credentials);
  static Worksheet? _drugReqSheet;

  static Future init() async {
    try {
      final spreadsheet = await _gsheetsDrugRequest.spreadsheet(
          _spreedsheetIdDrugRequest);
      _drugReqSheet =
      await _getWorkSheet(spreadsheet, title: 'DrugsRequestSheet');

      final firstRow = DrugRequestFields.getDrugRequestFields();
      _drugReqSheet!.values.insertRow(1, firstRow);
    } catch (e) {
      print('Init Error: $e');
    }
  }

  static Future<Worksheet> _getWorkSheet(
      Spreadsheet spreadsheet, {
        required String title,
  }) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title)!;
    }
  }

  static Future<int> getRowCount() async {
    if (_drugReqSheet == null) return 0;

    final lastRow = await _drugReqSheet!.values.lastRow();
    return lastRow == null ? 0: int.tryParse(lastRow.first) ?? 0;

  }


  static Future insert(List<Map<String, dynamic>> rowList) async{
    if(_drugReqSheet == null) return;

    _drugReqSheet!.values.map.appendRows(rowList);
  }

}

