// To parse this JSON data, do
//
//     final drugListPharmGroup = drugListPharmGroupFromJson(jsonString);

import 'dart:convert';

List<DrugListPharmGroup> drugListPharmGroupFromJson(String str) => List<DrugListPharmGroup>.from(json.decode(str).map((x) => DrugListPharmGroup.fromJson(x)));

String drugListPharmGroupToJson(List<DrugListPharmGroup> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DrugListPharmGroup {
  Category category;
  String medicineName;
  String therapeuticArea;
  String innName;
  String activeSubstance;
  String productNumber;
  AcceleratedAssessment patientSafety;
  AuthorisationStatus authorisationStatus;
  String atccode;
  AcceleratedAssessment additionalMonitoring;
  AcceleratedAssessment generic;
  AcceleratedAssessment biosimilar;
  AcceleratedAssessment conditionalApproval;
  AcceleratedAssessment exceptionalCircumstances;
  AcceleratedAssessment acceleratedAssessment;
  AcceleratedAssessment orphanMedicine;
  String marketingAuthorisationDate;
  String dateofRefusalofmarketingAuthorisation;
  String marketingAuthorisationHolderorCompanyName;
  String humanPharmacotherapeuticGroup;
  String vetPharmacotherapeuticGroup;
  String dateofOpinion;
  String decisionDate;
  dynamic revisionNumber;
  String conditionOrIndication;
  String firstPublished;
  String revisionDate;
  DateTime url;

  DrugListPharmGroup({
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
  });

  factory DrugListPharmGroup.fromJson(Map<String, dynamic> json) => DrugListPharmGroup(
    category: categoryValues.map[json["category"]]!,
    medicineName: json["medicineName"],
    therapeuticArea: json["therapeuticArea"],
    innName: json["inn_name"],
    activeSubstance: json["activeSubstance"],
    productNumber: json["productNumber"],
    patientSafety: acceleratedAssessmentValues.map[json["patientSafety"]]!,
    authorisationStatus: authorisationStatusValues.map[json["authorisationStatus"]]!,
    atccode: json["atccode"],
    additionalMonitoring: acceleratedAssessmentValues.map[json["additionalMonitoring"]]!,
    generic: acceleratedAssessmentValues.map[json["generic"]]!,
    biosimilar: acceleratedAssessmentValues.map[json["biosimilar"]]!,
    conditionalApproval: acceleratedAssessmentValues.map[json["conditionalApproval"]]!,
    exceptionalCircumstances: acceleratedAssessmentValues.map[json["exceptionalCircumstances"]]!,
    acceleratedAssessment: acceleratedAssessmentValues.map[json["acceleratedAssessment"]]!,
    orphanMedicine: acceleratedAssessmentValues.map[json["orphanMedicine"]]!,
    marketingAuthorisationDate: json["marketingAuthorisationDate"],
    dateofRefusalofmarketingAuthorisation: json["dateofRefusalofmarketingAuthorisation"],
    marketingAuthorisationHolderorCompanyName: json["marketingAuthorisationHolderorCompanyName"],
    humanPharmacotherapeuticGroup: json["humanPharmacotherapeuticGroup"],
    vetPharmacotherapeuticGroup: json["vetPharmacotherapeuticGroup"],
    dateofOpinion: json["dateofOpinion"],
    decisionDate: json["decisionDate"],
    revisionNumber: json["revisionNumber"],
    conditionOrIndication: json["conditionOrIndication"],
    firstPublished: json["firstPublished"],
    revisionDate: json["revisionDate"],
    url: DateTime.parse(json["url"]),
  );

  Map<String, dynamic> toJson() => {
    "category": categoryValues.reverse[category],
    "medicineName": medicineName,
    "therapeuticArea": therapeuticArea,
    "inn_name": innName,
    "activeSubstance": activeSubstance,
    "productNumber": productNumber,
    "patientSafety": acceleratedAssessmentValues.reverse[patientSafety],
    "authorisationStatus": authorisationStatusValues.reverse[authorisationStatus],
    "atccode": atccode,
    "additionalMonitoring": acceleratedAssessmentValues.reverse[additionalMonitoring],
    "generic": acceleratedAssessmentValues.reverse[generic],
    "biosimilar": acceleratedAssessmentValues.reverse[biosimilar],
    "conditionalApproval": acceleratedAssessmentValues.reverse[conditionalApproval],
    "exceptionalCircumstances": acceleratedAssessmentValues.reverse[exceptionalCircumstances],
    "acceleratedAssessment": acceleratedAssessmentValues.reverse[acceleratedAssessment],
    "orphanMedicine": acceleratedAssessmentValues.reverse[orphanMedicine],
    "marketingAuthorisationDate": marketingAuthorisationDate,
    "dateofRefusalofmarketingAuthorisation": dateofRefusalofmarketingAuthorisation,
    "marketingAuthorisationHolderorCompanyName": marketingAuthorisationHolderorCompanyName,
    "humanPharmacotherapeuticGroup": humanPharmacotherapeuticGroup,
    "vetPharmacotherapeuticGroup": vetPharmacotherapeuticGroup,
    "dateofOpinion": dateofOpinion,
    "decisionDate": decisionDate,
    "revisionNumber": revisionNumber,
    "conditionOrIndication": conditionOrIndication,
    "firstPublished": firstPublished,
    "revisionDate": revisionDate,
    "url": url.toIso8601String(),
  };
}

enum AcceleratedAssessment {
  NO,
  YES
}

final acceleratedAssessmentValues = EnumValues({
  "no": AcceleratedAssessment.NO,
  "yes": AcceleratedAssessment.YES
});

enum AuthorisationStatus {
  AUTHORISED,
  EMPTY,
  REFUSED,
  WITHDRAWN
}

final authorisationStatusValues = EnumValues({
  "Authorised": AuthorisationStatus.AUTHORISED,
  "": AuthorisationStatus.EMPTY,
  "Refused": AuthorisationStatus.REFUSED,
  "Withdrawn": AuthorisationStatus.WITHDRAWN
});

enum Category {
  HUMAN,
  VETERINARY
}

final categoryValues = EnumValues({
  "Human": Category.HUMAN,
  "Veterinary": Category.VETERINARY
});

enum RevisionNumberEnum {
  EMPTY,
  THE_01
}

final revisionNumberEnumValues = EnumValues({
  "": RevisionNumberEnum.EMPTY,
  "01": RevisionNumberEnum.THE_01
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}