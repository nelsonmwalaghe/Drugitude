// To parse this JSON data, do
//
//     final drugListPharmGroup = drugListPharmGroupFromJson(jsonString);

import 'dart:convert';

List<DrugListPharmGroup> drugListPharmGroupFromJson(String str) => List<DrugListPharmGroup>.from(json.decode(str).map((x) => DrugListPharmGroup.fromJson(x)));

String drugListPharmGroupToJson(List<DrugListPharmGroup> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DrugListPharmGroup {
  String id;
  String category;
  String medicineName;
  String therapeuticArea;
  String innName;
  String activeSubstance;
  String activeSubstanceStrengthPerDose;
  String dosageForm;
  String routeName;
  String shelfLife;
  String productImageUrl;
  String localForeign;
  String approxRetailPrice;
  String authorisationStatus;
  String atccode;
  String localRepresentativeHolderCompanyName;
  String marketingAuthorisationHolderorCompanyName;
  String humanPharmacotherapeuticGroup;
  String conditionOrIndication;
  String contraindicationOrWarningsOrPrecautions;
  String moaPhamacology;
  String excipientsList;
  String url;
  String verifiedInfo;

  DrugListPharmGroup({
    required this.id,
    required this.category,
    required this.medicineName,
    required this.therapeuticArea,
    required this.innName,
    required this.activeSubstance,
    required this.activeSubstanceStrengthPerDose,
    required this.dosageForm,
    required this.routeName,
    required this.shelfLife,
    required this.productImageUrl,
    required this.localForeign,
    required this.approxRetailPrice,
    required this.authorisationStatus,
    required this.atccode,
    required this.localRepresentativeHolderCompanyName,
    required this.marketingAuthorisationHolderorCompanyName,
    required this.humanPharmacotherapeuticGroup,
    required this.conditionOrIndication,
    required this.contraindicationOrWarningsOrPrecautions,
    required this.moaPhamacology,
    required this.excipientsList,
    required this.url,
    required this.verifiedInfo,
  });

  factory DrugListPharmGroup.fromJson(Map<String, dynamic> json) => DrugListPharmGroup(
    id: json["id"],
    category: json["category"],
    medicineName: json["medicineName"],
    therapeuticArea: json["therapeuticArea"],
    innName: json["inn_name"],
    activeSubstance: json["activeSubstance"],
    activeSubstanceStrengthPerDose: json["activeSubstanceStrengthPerDose"],
    dosageForm: json["dosageForm"],
    routeName: json["routeName"],
    shelfLife: json["shelfLife"],
    productImageUrl: json["productImageUrl"],
    localForeign: json["localForeign"],
    approxRetailPrice: json["approxRetailPrice"],
    authorisationStatus: json["authorisationStatus"],
    atccode: json["atccode"],
    localRepresentativeHolderCompanyName: json["localRepresentativeHolderCompanyName"],
    marketingAuthorisationHolderorCompanyName: json["marketingAuthorisationHolderorCompanyName"],
    humanPharmacotherapeuticGroup: json["humanPharmacotherapeuticGroup"],
    conditionOrIndication: json["conditionOrIndication"],
    contraindicationOrWarningsOrPrecautions: json["contraindicationOrWarningsOrPrecautions"],
    moaPhamacology: json["moaPhamacology"],
    excipientsList: json["excipientsList"],
    url: json["url"],
    verifiedInfo: json["verifiedInfo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "category": category,
    "medicineName": medicineName,
    "therapeuticArea": therapeuticArea,
    "inn_name": innName,
    "activeSubstance": activeSubstance,
    "activeSubstanceStrengthPerDose": activeSubstanceStrengthPerDose,
    "dosageForm": dosageForm,
    "routeName": routeName,
    "shelfLife": shelfLife,
    "productImageUrl": productImageUrl,
    "localForeign": localForeign,
    "approxRetailPrice": approxRetailPrice,
    "authorisationStatus": authorisationStatus,
    "atccode": atccode,
    "localRepresentativeHolderCompanyName": localRepresentativeHolderCompanyName,
    "marketingAuthorisationHolderorCompanyName": marketingAuthorisationHolderorCompanyName,
    "humanPharmacotherapeuticGroup": humanPharmacotherapeuticGroup,
    "conditionOrIndication": conditionOrIndication,
    "contraindicationOrWarningsOrPrecautions": contraindicationOrWarningsOrPrecautions,
    "moaPhamacology": moaPhamacology,
    "excipientsList": excipientsList,
    "url": url,
    "verifiedInfo": verifiedInfo,
  };
}
