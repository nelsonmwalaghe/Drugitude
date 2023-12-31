class DrugRequestFields {
  static const String id = 'id';
  static const String brandName = 'brandName';
  static const String genericName = 'genericName';
  static const String email = 'email';
  static const String shouldwecontactyou = 'shouldwecontactyou';

  static List<String> getDrugRequestFields() => [id, brandName, genericName, email, shouldwecontactyou];

}

class DrugRequestedEntry {
  final int? id;
  final String brandName;
  final String genericName;
  final String email;
  final bool shouldwecontactyou;

  const DrugRequestedEntry({
  this.id,
  required this.brandName,
  required this.genericName,
  required this.email,
  required this.shouldwecontactyou,

});

  DrugRequestedEntry copy({
    int? id,
    String? brandName,
    String? genericname,
    String? email,
    bool? shouldwecontactyou,
}) =>
  DrugRequestedEntry(
      id: id ?? this.id,
      brandName: brandName ?? this.brandName,
      genericName: genericName ?? genericName,
      email: email ?? this.email,
      shouldwecontactyou: shouldwecontactyou ?? this.shouldwecontactyou,
  );

  Map<String, dynamic> toJson() => {
    DrugRequestFields.id: id,
    DrugRequestFields.brandName: brandName,
    DrugRequestFields.genericName: genericName,
    DrugRequestFields.email: email,
    DrugRequestFields.shouldwecontactyou: shouldwecontactyou,
  };
}