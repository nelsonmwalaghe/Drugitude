// To parse this JSON data, do
//
//     final drugList = drugListFromJson(jsonString);

import 'dart:convert';

List<DrugListTherapueticArea> drugListTherapueticAreaFromJson(String str) => List<DrugListTherapueticArea>.from(json.decode(str).map((x) => DrugListTherapueticArea.fromJson(x)));

String drugListTherapueticAreaToJson(List<DrugListTherapueticArea> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DrugListTherapueticArea {
  Category? category;
  String? medicineName;
  String? therapeuticArea;
  String? innName;
  String? activeSubstance;
  dynamic activeSubstanceStrengthPerDose;
  String? dosageForm;
  RouteName? routeName;
  ShelfLife? shelfLife;
  String? productVisualDesc;
  String? productImageUrl;
  LocalForeign? localForeign;
  String? approxRetailPrice;
  int? productNumber;
  String? patientSafety;
  AuthorisationStatus? authorisationStatus;
  String? atccode;
  String? additionalMonitoring;
  String? generic;
  String? biosimilar;
  String? conditionalApproval;
  String? exceptionalCircumstances;
  String? acceleratedAssessment;
  String? orphanMedicine;
  String? marketingAuthorisationDate;
  String? dateofRefusalofmarketingAuthorisation;
  String? localRepresentativeHolderCompanyName;
  String? marketingAuthorisationHolderorCompanyName;
  dynamic marketingAuthorisationHolderorCompanyAddress;
  dynamic marketingAuthorisationHolderorCompanyEmail;
  String? marketingAuthorisedCompanySite;
  dynamic marketingAuthorisedCompanySiteAddress;
  String? humanPharmacotherapeuticGroup;
  String? vetPharmacotherapeuticGroup;
  String? dateofOpinion;
  String? decisionDate;
  String? revisionNumber;
  String? conditionOrIndication;
  String? contraindicationOrWarningsOrPrecautions;
  String? pregnancyLactation;
  String? drivingOrMachineryUseAbility;
  String? undesirableEffects;
  String? overdose;
  String? mechanismOfActionOrPharmacologicalOrPharmacodyamicOrPharmacokineticXtics;
  String? excipientsList;
  String? incompatibilitiesOrInteractions;
  String? specialStorageOrPrecautions;
  String? disposalHandlingPrecautions;
  String? firstPublished;
  String? revisionDate;
  String? url;
  String? verifiedInfo;

  DrugListTherapueticArea({
    this.category,
    this.medicineName,
    this.therapeuticArea,
    this.innName,
    this.activeSubstance,
    this.activeSubstanceStrengthPerDose,
    this.dosageForm,
    this.routeName,
    this.shelfLife,
    this.productVisualDesc,
    this.productImageUrl,
    this.localForeign,
    this.approxRetailPrice,
    this.productNumber,
    this.patientSafety,
    this.authorisationStatus,
    this.atccode,
    this.additionalMonitoring,
    this.generic,
    this.biosimilar,
    this.conditionalApproval,
    this.exceptionalCircumstances,
    this.acceleratedAssessment,
    this.orphanMedicine,
    this.marketingAuthorisationDate,
    this.dateofRefusalofmarketingAuthorisation,
    this.localRepresentativeHolderCompanyName,
    this.marketingAuthorisationHolderorCompanyName,
    this.marketingAuthorisationHolderorCompanyAddress,
    this.marketingAuthorisationHolderorCompanyEmail,
    this.marketingAuthorisedCompanySite,
    this.marketingAuthorisedCompanySiteAddress,
    this.humanPharmacotherapeuticGroup,
    this.vetPharmacotherapeuticGroup,
    this.dateofOpinion,
    this.decisionDate,
    this.revisionNumber,
    this.conditionOrIndication,
    this.contraindicationOrWarningsOrPrecautions,
    this.pregnancyLactation,
    this.drivingOrMachineryUseAbility,
    this.undesirableEffects,
    this.overdose,
    this.mechanismOfActionOrPharmacologicalOrPharmacodyamicOrPharmacokineticXtics,
    this.excipientsList,
    this.incompatibilitiesOrInteractions,
    this.specialStorageOrPrecautions,
    this.disposalHandlingPrecautions,
    this.firstPublished,
    this.revisionDate,
    this.url,
    this.verifiedInfo,
  });

  factory DrugListTherapueticArea.fromJson(Map<String, dynamic> json) => DrugListTherapueticArea(
    category: categoryValues.map[json["category"]]!,
    medicineName: json["medicineName"],
    therapeuticArea: json["therapeuticArea"],
    innName: json["inn_name"],
    activeSubstance: json["activeSubstance"],
    activeSubstanceStrengthPerDose: json["activeSubstanceStrengthPerDose"],
    dosageForm: json["dosageForm"],
    routeName: routeNameValues.map[json["routeName"]]!,
    shelfLife: shelfLifeValues.map[json["shelfLife"]]!,
    productVisualDesc: json["productVisualDesc"],
    productImageUrl: json["productImageUrl"],
    localForeign: localForeignValues.map[json["localForeign"]]!,
    approxRetailPrice: json["approxRetailPrice"],
    productNumber: json["productNumber"],
    patientSafety: json["patientSafety"],
    authorisationStatus: authorisationStatusValues.map[json["authorisationStatus"]]!,
    atccode: json["atccode"],
    additionalMonitoring: json["additionalMonitoring"],
    generic: json["generic"],
    biosimilar: json["biosimilar"],
    conditionalApproval: json["conditionalApproval"],
    exceptionalCircumstances: json["exceptionalCircumstances"],
    acceleratedAssessment: json["acceleratedAssessment"],
    orphanMedicine: json["orphanMedicine"],
    marketingAuthorisationDate: json["marketingAuthorisationDate"],
    dateofRefusalofmarketingAuthorisation: json["dateofRefusalofmarketingAuthorisation"],
    localRepresentativeHolderCompanyName: json["localRepresentativeHolderCompanyName"],
    marketingAuthorisationHolderorCompanyName: json["marketingAuthorisationHolderorCompanyName"],
    marketingAuthorisationHolderorCompanyAddress: json["marketingAuthorisationHolderorCompanyAddress"],
    marketingAuthorisationHolderorCompanyEmail: json["marketingAuthorisationHolderorCompanyEmail"],
    marketingAuthorisedCompanySite: json["marketingAuthorisedCompanySite"],
    marketingAuthorisedCompanySiteAddress: json["marketingAuthorisedCompanySiteAddress"],
    humanPharmacotherapeuticGroup: json["humanPharmacotherapeuticGroup"],
    vetPharmacotherapeuticGroup: json["vetPharmacotherapeuticGroup"],
    dateofOpinion: json["dateofOpinion"],
    decisionDate: json["decisionDate"],
    revisionNumber: json["revisionNumber"],
    conditionOrIndication: json["conditionOrIndication"],
    contraindicationOrWarningsOrPrecautions: json["contraindicationOrWarningsOrPrecautions"],
    pregnancyLactation: json["pregnancyLactation"],
    drivingOrMachineryUseAbility: json["drivingOrMachineryUseAbility"],
    undesirableEffects: json["undesirableEffects"],
    overdose: json["overdose"],
    mechanismOfActionOrPharmacologicalOrPharmacodyamicOrPharmacokineticXtics: json["mechanismOfActionOrPharmacologicalOrPharmacodyamicOrPharmacokineticXtics"],
    excipientsList: json["excipientsList"],
    incompatibilitiesOrInteractions: json["incompatibilitiesOrInteractions"],
    specialStorageOrPrecautions: json["specialStorageOrPrecautions"],
    disposalHandlingPrecautions: json["disposalHandlingPrecautions"],
    firstPublished: json["firstPublished"],
    revisionDate: json["revisionDate"],
    url: json["url"],
    verifiedInfo: json["verifiedInfo"],
  );

  Map<String, dynamic> toJson() => {
    "category": categoryValues.reverse[category],
    "medicineName": medicineName,
    "therapeuticArea": therapeuticArea,
    "inn_name": innName,
    "activeSubstance": activeSubstance,
    "activeSubstanceStrengthPerDose": activeSubstanceStrengthPerDose,
    "dosageForm": dosageForm,
    "routeName": routeNameValues.reverse[routeName],
    "shelfLife": shelfLifeValues.reverse[shelfLife],
    "productVisualDesc": productVisualDesc,
    "productImageUrl": productImageUrl,
    "localForeign": localForeignValues.reverse[localForeign],
    "approxRetailPrice": approxRetailPrice,
    "productNumber": productNumber,
    "patientSafety": patientSafety,
    "authorisationStatus": authorisationStatusValues.reverse[authorisationStatus],
    "atccode": atccode,
    "additionalMonitoring": additionalMonitoring,
    "generic": generic,
    "biosimilar": biosimilar,
    "conditionalApproval": conditionalApproval,
    "exceptionalCircumstances": exceptionalCircumstances,
    "acceleratedAssessment": acceleratedAssessment,
    "orphanMedicine": orphanMedicine,
    "marketingAuthorisationDate": marketingAuthorisationDate,
    "dateofRefusalofmarketingAuthorisation": dateofRefusalofmarketingAuthorisation,
    "localRepresentativeHolderCompanyName": localRepresentativeHolderCompanyName,
    "marketingAuthorisationHolderorCompanyName": marketingAuthorisationHolderorCompanyName,
    "marketingAuthorisationHolderorCompanyAddress": marketingAuthorisationHolderorCompanyAddress,
    "marketingAuthorisationHolderorCompanyEmail": marketingAuthorisationHolderorCompanyEmail,
    "marketingAuthorisedCompanySite": marketingAuthorisedCompanySite,
    "marketingAuthorisedCompanySiteAddress": marketingAuthorisedCompanySiteAddress,
    "humanPharmacotherapeuticGroup": humanPharmacotherapeuticGroup,
    "vetPharmacotherapeuticGroup": vetPharmacotherapeuticGroup,
    "dateofOpinion": dateofOpinion,
    "decisionDate": decisionDate,
    "revisionNumber": revisionNumber,
    "conditionOrIndication": conditionOrIndication,
    "contraindicationOrWarningsOrPrecautions": contraindicationOrWarningsOrPrecautions,
    "pregnancyLactation": pregnancyLactation,
    "drivingOrMachineryUseAbility": drivingOrMachineryUseAbility,
    "undesirableEffects": undesirableEffects,
    "overdose": overdose,
    "mechanismOfActionOrPharmacologicalOrPharmacodyamicOrPharmacokineticXtics": mechanismOfActionOrPharmacologicalOrPharmacodyamicOrPharmacokineticXtics,
    "excipientsList": excipientsList,
    "incompatibilitiesOrInteractions": incompatibilitiesOrInteractions,
    "specialStorageOrPrecautions": specialStorageOrPrecautions,
    "disposalHandlingPrecautions": disposalHandlingPrecautions,
    "firstPublished": firstPublished,
    "revisionDate": revisionDate,
    "url": url,
    "verifiedInfo": verifiedInfo,
  };
}

enum AuthorisationStatus {
  AUTHORIZED,
  REGISTERED,
  REVOKED,
  SUSPENDED,
  WITHDRAWN
}

final authorisationStatusValues = EnumValues({
  "Authorized": AuthorisationStatus.AUTHORIZED,
  "Registered": AuthorisationStatus.REGISTERED,
  "Revoked": AuthorisationStatus.REVOKED,
  "Suspended": AuthorisationStatus.SUSPENDED,
  "Withdrawn": AuthorisationStatus.WITHDRAWN
});

enum Category {
  EMPTY,
  HUMAN,
  VET
}

final categoryValues = EnumValues({
  "": Category.EMPTY,
  "Human": Category.HUMAN,
  "Vet": Category.VET
});

enum LocalForeign {
  FOREIGN,
  LOCAL
}

final localForeignValues = EnumValues({
  "Foreign": LocalForeign.FOREIGN,
  "Local": LocalForeign.LOCAL
});

enum RouteName {
  AURICULAR_OCULAR,
  AURICULAR_OTIC,
  BUCCAL,
  CONJUNCTIVAL,
  CUTANEOUS,
  DENTAL,
  ENDOSINUSIAL,
  ENTERAL,
  EPIDURAL,
  INFILTRATION,
  INTRABRONCHIAL,
  INTRACAVERNOUS,
  INTRADERMAL,
  INTRAMEDULLARY,
  INTRAMUSCULAR,
  INTRAMUSCULAR_SUBCUTANEOUS,
  INTRAOCULAR,
  INTRAPULMONARY,
  INTRASPINAL,
  INTRATHECAL,
  INTRAUTERINE,
  INTRAVASCULAR,
  INTRAVENOUS,
  INTRAVENOUS_BOLUS,
  INTRAVENOUS_DRIP,
  INTRAVENOUS_INTRAMUSCULAR,
  INTRAVENOUS_INTRAMUSCULAR_SUBCUTANEOUS,
  INTRAVESICAL,
  INTRAVITREAL,
  INTRA_ABDOMINAL,
  INTRA_ARTERIAL,
  INTRA_ARTICULAR,
  IRRIGATION,
  NASAL,
  NOT_APPLICABLE,
  OCCLUSIVE_DRESSING_TECHNIQUE,
  OPHTHALMIC,
  ORAL,
  OROPHARYNGEAL,
  OTHER,
  PARENTERAL,
  PERCUTANEOUS,
  PERIDURAL,
  PERIODONTAL,
  RECTAL,
  RESPIRATORY_INHALATION,
  SOFT_TISSUE,
  SUBCUTANEOUS,
  SUBCUTANEOUS_INTRAVENOUS,
  SUBLINGUAL,
  SUBMUCOSAL,
  TOPICAL,
  TRANSDERMAL,
  UNASSIGNED,
  UNKNOWN,
  VAGINAL
}

final routeNameValues = EnumValues({
  "AURICULAR/OCULAR": RouteName.AURICULAR_OCULAR,
  "AURICULAR (OTIC)": RouteName.AURICULAR_OTIC,
  "BUCCAL": RouteName.BUCCAL,
  "CONJUNCTIVAL": RouteName.CONJUNCTIVAL,
  "CUTANEOUS": RouteName.CUTANEOUS,
  "DENTAL": RouteName.DENTAL,
  "ENDOSINUSIAL": RouteName.ENDOSINUSIAL,
  "ENTERAL": RouteName.ENTERAL,
  "EPIDURAL": RouteName.EPIDURAL,
  "INFILTRATION": RouteName.INFILTRATION,
  "INTRABRONCHIAL": RouteName.INTRABRONCHIAL,
  "INTRACAVERNOUS": RouteName.INTRACAVERNOUS,
  "INTRADERMAL": RouteName.INTRADERMAL,
  "INTRAMEDULLARY": RouteName.INTRAMEDULLARY,
  "INTRAMUSCULAR": RouteName.INTRAMUSCULAR,
  "INTRAMUSCULAR/SUBCUTANEOUS": RouteName.INTRAMUSCULAR_SUBCUTANEOUS,
  "INTRAOCULAR": RouteName.INTRAOCULAR,
  "INTRAPULMONARY": RouteName.INTRAPULMONARY,
  "INTRASPINAL": RouteName.INTRASPINAL,
  "INTRATHECAL": RouteName.INTRATHECAL,
  "INTRAUTERINE": RouteName.INTRAUTERINE,
  "INTRAVASCULAR": RouteName.INTRAVASCULAR,
  "INTRAVENOUS": RouteName.INTRAVENOUS,
  "INTRAVENOUS BOLUS": RouteName.INTRAVENOUS_BOLUS,
  "INTRAVENOUS DRIP": RouteName.INTRAVENOUS_DRIP,
  "INTRAVENOUS/INTRAMUSCULAR": RouteName.INTRAVENOUS_INTRAMUSCULAR,
  "INTRAVENOUS/INTRAMUSCULAR/SUBCUTANEOUS": RouteName.INTRAVENOUS_INTRAMUSCULAR_SUBCUTANEOUS,
  "INTRAVESICAL": RouteName.INTRAVESICAL,
  "INTRAVITREAL": RouteName.INTRAVITREAL,
  "INTRA-ABDOMINAL": RouteName.INTRA_ABDOMINAL,
  "INTRA-ARTERIAL": RouteName.INTRA_ARTERIAL,
  "INTRA-ARTICULAR": RouteName.INTRA_ARTICULAR,
  "IRRIGATION": RouteName.IRRIGATION,
  "NASAL": RouteName.NASAL,
  "NOT APPLICABLE": RouteName.NOT_APPLICABLE,
  "OCCLUSIVE DRESSING TECHNIQUE": RouteName.OCCLUSIVE_DRESSING_TECHNIQUE,
  "OPHTHALMIC": RouteName.OPHTHALMIC,
  "ORAL": RouteName.ORAL,
  "OROPHARYNGEAL": RouteName.OROPHARYNGEAL,
  "OTHER": RouteName.OTHER,
  "PARENTERAL": RouteName.PARENTERAL,
  "PERCUTANEOUS": RouteName.PERCUTANEOUS,
  "PERIDURAL": RouteName.PERIDURAL,
  "PERIODONTAL": RouteName.PERIODONTAL,
  "RECTAL": RouteName.RECTAL,
  "RESPIRATORY (INHALATION)": RouteName.RESPIRATORY_INHALATION,
  "SOFT TISSUE": RouteName.SOFT_TISSUE,
  "SUBCUTANEOUS": RouteName.SUBCUTANEOUS,
  "SUBCUTANEOUS/INTRAVENOUS": RouteName.SUBCUTANEOUS_INTRAVENOUS,
  "SUBLINGUAL": RouteName.SUBLINGUAL,
  "SUBMUCOSAL": RouteName.SUBMUCOSAL,
  "TOPICAL": RouteName.TOPICAL,
  "TRANSDERMAL": RouteName.TRANSDERMAL,
  "UNASSIGNED": RouteName.UNASSIGNED,
  "UNKNOWN": RouteName.UNKNOWN,
  "VAGINAL": RouteName.VAGINAL
});

enum ShelfLife {
  THE_12_MONTHS,
  THE_18_MONTHS,
  THE_24_MONTHS,
  THE_30_DAYS,
  THE_36_MONTHS,
  THE_42_MONTHS,
  THE_48_MONTHS,
  THE_60_MONTHS,
  THE_6_WEEKS,
  THE_7_DAYS
}

final shelfLifeValues = EnumValues({
  "12 Months": ShelfLife.THE_12_MONTHS,
  "18 months": ShelfLife.THE_18_MONTHS,
  "24 months": ShelfLife.THE_24_MONTHS,
  "30 Days": ShelfLife.THE_30_DAYS,
  "36 months": ShelfLife.THE_36_MONTHS,
  "42 Months": ShelfLife.THE_42_MONTHS,
  "48 months": ShelfLife.THE_48_MONTHS,
  "60 months": ShelfLife.THE_60_MONTHS,
  "6 Weeks": ShelfLife.THE_6_WEEKS,
  "7 Days": ShelfLife.THE_7_DAYS
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
