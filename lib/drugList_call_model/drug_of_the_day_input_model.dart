// To parse this JSON data, do
//
//     final dayDrug = dayDrugFromJson(jsonString);

import 'dart:convert';

List<DayDrug> dayDrugFromJson(String str) => List<DayDrug>.from(json.decode(str).map((x) => DayDrug.fromJson(x)));

String dayDrugToJson(List<DayDrug> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DayDrug {
  String category;
  String medicineName;
  String therapeuticArea;
  String innName;
  String activeSubstance;
  String productNumber;
  String patientSafety;
  String authorisationStatus;
  String atccode;
  String additionalMonitoring;
  String generic;
  String biosimilar;
  String conditionalApproval;
  String exceptionalCircumstances;
  String acceleratedAssessment;
  String orphanMedicine;
  DateTime marketingAuthorisationDate;
  String dateofRefusalofmarketingAuthorisation;
  String marketingAuthorisationHolderorCompanyName;
  String humanPharmacotherapeuticGroup;
  String vetPharmacotherapeuticGroup;
  String dateofOpinion;
  DateTime decisionDate;
  int revisionNumber;
  String conditionOrIndication;
  DateTime firstPublished;
  DateTime revisionDate;
  String url;
  DateTime drugDaydate;

  DayDrug({
    required this.category,
    required this.medicineName,
    required this.therapeuticArea,
    required this.innName,
    required this.activeSubstance,
    required this.productNumber,
    required this.patientSafety,
    required this.authorisationStatus,
    required this.atccode,
    required this.additionalMonitoring,
    required this.generic,
    required this.biosimilar,
    required this.conditionalApproval,
    required this.exceptionalCircumstances,
    required this.acceleratedAssessment,
    required this.orphanMedicine,
    required this.marketingAuthorisationDate,
    required this.dateofRefusalofmarketingAuthorisation,
    required this.marketingAuthorisationHolderorCompanyName,
    required this.humanPharmacotherapeuticGroup,
    required this.vetPharmacotherapeuticGroup,
    required this.dateofOpinion,
    required this.decisionDate,
    required this.revisionNumber,
    required this.conditionOrIndication,
    required this.firstPublished,
    required this.revisionDate,
    required this.url,
    required this.drugDaydate,
  });

  factory DayDrug.fromJson(Map<String, dynamic> json) => DayDrug(
    category: json["category"],
    medicineName: json["medicineName"],
    therapeuticArea: json["therapeuticArea"],
    innName: json["inn_name"],
    activeSubstance: json["activeSubstance"],
    productNumber: json["productNumber"],
    patientSafety: json["patientSafety"],
    authorisationStatus: json["authorisationStatus"],
    atccode: json["atccode"],
    additionalMonitoring: json["additionalMonitoring"],
    generic: json["generic"],
    biosimilar: json["biosimilar"],
    conditionalApproval: json["conditionalApproval"],
    exceptionalCircumstances: json["exceptionalCircumstances"],
    acceleratedAssessment: json["acceleratedAssessment"],
    orphanMedicine: json["orphanMedicine"],
    marketingAuthorisationDate: DateTime.parse(json["marketingAuthorisationDate"]),
    dateofRefusalofmarketingAuthorisation: json["dateofRefusalofmarketingAuthorisation"],
    marketingAuthorisationHolderorCompanyName: json["marketingAuthorisationHolderorCompanyName"],
    humanPharmacotherapeuticGroup: json["humanPharmacotherapeuticGroup"],
    vetPharmacotherapeuticGroup: json["vetPharmacotherapeuticGroup"],
    dateofOpinion: json["dateofOpinion"],
    decisionDate: DateTime.parse(json["decisionDate"]),
    revisionNumber: json["revisionNumber"],
    conditionOrIndication: json["conditionOrIndication"],
    firstPublished: DateTime.parse(json["firstPublished"]),
    revisionDate: DateTime.parse(json["revisionDate"]),
    url: json["url"],
    drugDaydate: DateTime.parse(json["drugDaydate"]),
  );

  Map<String, dynamic> toJson() => {
    "category": category,
    "medicineName": medicineName,
    "therapeuticArea": therapeuticArea,
    "inn_name": innName,
    "activeSubstance": activeSubstance,
    "productNumber": productNumber,
    "patientSafety": patientSafety,
    "authorisationStatus": authorisationStatus,
    "atccode": atccode,
    "additionalMonitoring": additionalMonitoring,
    "generic": generic,
    "biosimilar": biosimilar,
    "conditionalApproval": conditionalApproval,
    "exceptionalCircumstances": exceptionalCircumstances,
    "acceleratedAssessment": acceleratedAssessment,
    "orphanMedicine": orphanMedicine,
    "marketingAuthorisationDate": marketingAuthorisationDate.toIso8601String(),
    "dateofRefusalofmarketingAuthorisation": dateofRefusalofmarketingAuthorisation,
    "marketingAuthorisationHolderorCompanyName": marketingAuthorisationHolderorCompanyName,
    "humanPharmacotherapeuticGroup": humanPharmacotherapeuticGroup,
    "vetPharmacotherapeuticGroup": vetPharmacotherapeuticGroup,
    "dateofOpinion": dateofOpinion,
    "decisionDate": decisionDate.toIso8601String(),
    "revisionNumber": revisionNumber,
    "conditionOrIndication": conditionOrIndication,
    "firstPublished": firstPublished.toIso8601String(),
    "revisionDate": revisionDate.toIso8601String(),
    "url": url,
    "drugDaydate": drugDaydate.toIso8601String(),
  };
}
