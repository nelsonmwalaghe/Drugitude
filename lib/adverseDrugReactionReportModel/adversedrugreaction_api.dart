import'package:gsheets/gsheets.dart';

class AdrSheetApi {
  static const _credentials = r'''
  {
  "type": "service_account",
  "project_id": "drugitude-adrs-report",
  "private_key_id": "6e925ff7e650658b57a627e883552b0bf94b5981",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDym6wD5BNgz4ze\nB7bb4lvA/qeWhBg+TSpIt/8E/G3x3UkXzSlUPXDTiQo7gvdmFCL8IKYsg7pF6Yjd\n96WVY3HRajePQ1skX09vRw80/Q8n83tIeSJ/3jBDDj7lL9pBba9Pr8kPqDTrAvGM\nqFgiHSV0LgsoN3GwNgG/2hLgKTWMY+o7AFyTZXtAE+5X9roviHtFHjOYORwbbTjO\nqkoCmIzOYdO2rh4RwLmVI+rs0EzO91N7dI1SgNprZFwA4KZ+bUXAKX++6ffnFGaL\nuwxfw4d0RyNKQsULRQqzTUAqdKjxUnit6sjPRfGckGYOh6hpNxF0ok7XZTkxsSLC\nEPdLCZp5AgMBAAECggEAarSvltKE92qyQaHQ+qt3wc3/tgMJirVz6KIM54uDbALx\nOCfDisqvSksXFg/Hcr1emdheXmvdzQwnZ8GZsbgYgowePcPZXYkSLhZqCNtZBDBi\nRAELfIQkZAnq/fDrJSXyGrFtVJaeF9OmnEAa6344T/5EZ/7i4ScP4+strCxT4hfg\n1f4ZsVrau3/9mwMRZi60p7ZiFZMCCFz0uWEFd/uczJxPrxGO11qCXnUMeKNmilQB\nqZK0/kEAMoeJgQNQV5mIH7sZnY3QPlQnPrAKtyexfRiQpLH6ps2kPRiLrbSei37x\nBE5wWDvfUcpNyhVeWnO7hDyN8EEmd+Wu6BdtWtbnxQKBgQD9vPqPz6R9L3YaD5Rv\nq/VWCtdDGV179plcZLIXE1oz6OzgDfx+hNesYO3iZXG8U0XxKv7BlVLP4m192Lhm\n/iionCL0XcoDsGYlMGSVz2kCEUbBOVpPqx3NNkRp2+uxNs0RSyzmSJ+mJooqiXzc\nXYo9Qwv7fLf6Yi0AW6l10hXEiwKBgQD0xUtwotpmlZjNMg8/ln/pBLbhL0yrMFHm\n5AjjV2R1VPWForJn1KiF/QB/ihRMYnu3FHt0/zGW8RbyQkvQY649eq1f1EP4DIt6\n+rL3Ru3jvgPt0WbuqvT0XzsvwXtDBa/lT0v6W2oBIOkUTkwUJ0t5QnOyQpui7X9n\nBuJfds0JiwKBgQDPdMZr9Hppe/eUwS48y5yQV9a+XqvHYczr9MyC/2idzpB1dBoA\nG372yl1U4FpIftFNqDiYcA1AOMIKxbmnQ6BckyQlJdW4hG5Pc6yZq/YQIa3253yG\nbMK1+OugnZWr08GApTU1pyUYxKPsuXKj/bq78eiHGuaVSdW/WDJKSZVQlwKBgEur\nAltbvPChpo8ovpYFzJ0YnACZQrZZRbh/HlBJoAC1twEM/uIiV8a0JAdJhGTovR4n\n8tKEYawr89AItq9BYYgX+Kj7UdfI6QWnotPW1YvmHgjTB2MY7ojtN7rXsWdSxsG4\n9d/7ipW2utdQLSy9yRM/e8zL0plXml8bPbgNXe1pAoGAVGYJ7GReiB5e/dG0qQQ3\n5bEJ7qgT49LvLvTWTjDMOUN2ZHbv0X7nr5tjGVlw6O2cLvKycyVPenJ7l48L3Cho\nRKfjjWfWqJ1C1QrpFpovBc9w41YlvtBBvL029aH/XO+TnlBCkxS67zXoBd2D7pd5\naAg1zHXarfar/1V5FYjH914=\n-----END PRIVATE KEY-----\n",
  "client_email": "drugitude-adrs-report@drugitude-adrs-report.iam.gserviceaccount.com",
  "client_id": "113735431379374085678",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/drugitude-adrs-report%40drugitude-adrs-report.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
  ''';
  static final _spreadsheetIdADRSReport = '1Jc1V4vnI3aNTw6SF0byKPmaw2zqGUC0NJVHlUI5Fv6E';
  static final _gsheetsADRSReport = GSheets(_credentials);
  static Worksheet? _ADRSReportSheet;

  static Future init() async {
    final spreadsheet = await _gsheetsADRSReport.spreadsheet(_spreadsheetIdADRSReport);
    _ADRSReportSheet = await _getADRSReportWorkSheet(spreadsheet, title: 'DRUGITUTE ADVERSE DRUG REACTION REPORTING FORM');
  }
  static Future<Worksheet> _getADRSReportWorkSheet(
      Spreadsheet spreadsheet, {
        required String title,
  }
      ) async {
    try {
      return await spreadsheet.addWorksheet(title);
    } catch (e) {
      return spreadsheet.worksheetByTitle(title)!;
    }
  }
}