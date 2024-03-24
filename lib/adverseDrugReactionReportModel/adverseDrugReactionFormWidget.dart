import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../pages/adrsreportconfirmationlistpage.dart';
import 'adversedrugreaction_fields.dart';


class AdrsReportFormWidget extends StatefulWidget {
  final ValueChanged<AdrsReportEntry> onSavedAdrsReportEntry;
  const AdrsReportFormWidget({
    super.key,
    required this.onSavedAdrsReportEntry,
    });

  @override
  State<AdrsReportFormWidget> createState() => _AdrsReportFormWidgetState();
}

class _AdrsReportFormWidgetState extends State<AdrsReportFormWidget> {
  late final bool _customIcon = false;
  final itemKeyC = GlobalKey();
  final itemKeyD = GlobalKey();
  final itemKeyT = GlobalKey();
  Future scrollToItemC() async {
    final context = itemKeyC.currentContext!;
    await Scrollable.ensureVisible(context, duration: const Duration(seconds: 1));
  }
  Future scrollToItemD() async {
    final context = itemKeyD.currentContext!;
    await Scrollable.ensureVisible(context, duration: const Duration(seconds: 1));
  }
  Future scrollToItemT() async {
    final context = itemKeyT.currentContext!;
    await Scrollable.ensureVisible(context, duration: const Duration(seconds: 1));
  }

  final formKey = GlobalKey<FormState>();

  late TextEditingController controllerReportTitle;
  late TextEditingController controllerReportOn;
  late TextEditingController controllerReportType;
  late TextEditingController controllerProductCategory;
  late TextEditingController controllerInstitutionName;
  late TextEditingController controllerInstitutionContact;
  late TextEditingController controllerInstitutionFacilityCode;
  late TextEditingController controllerInstitutionCounty;
  late TextEditingController controllerPatientName;
  late TextEditingController controllerPatientIpOpNo;
  late TextEditingController controllerPatientAgeBracket;
  late TextEditingController controllerPatientAddress;
  late TextEditingController controllerPatientWardClinic;
  late TextEditingController controllerPatientSex;
  late TextEditingController controllerPatientAllergies;
  late TextEditingController controllerPregnancyStatus;
  late TextEditingController controllerPatientWeight;
  late TextEditingController controllerPatientHeight;
  late TextEditingController controllerSuspectedADRsOnset;
  late TextEditingController controllerAdrsDescription;
  late TextEditingController controllerPatientMedicalHistory;

  late TextEditingController controllerCurrentMedicineList1Brand;
  late bool isDrugsuspected1;
  late TextEditingController controllerCurrentMedicineList1Gen;
  late TextEditingController controllerCurrentMedicineList1Manufacturer;
  late TextEditingController controllerCurrentMedicineList1Batch;
  late TextEditingController controllerCurrentMedicineList1Dose;
  late TextEditingController controllerCurrentMedicineList1Route;
  late TextEditingController controllerCurrentMedicineList1Frequency;
  late TextEditingController controllerCurrentMedicineList1RxStartDate;
  late TextEditingController controllerCurrentMedicineList1RxEndDate;
  late TextEditingController controllerCurrentMedicineList1Indication;

  late TextEditingController controllerCurrentMedicineList2Brand;
  late bool isDrugsuspected2;
  late TextEditingController controllerCurrentMedicineList2Gen;
  late TextEditingController controllerCurrentMedicineList2Manufacturer;
  late TextEditingController controllerCurrentMedicineList2Batch;
  late TextEditingController controllerCurrentMedicineList2Dose;
  late TextEditingController controllerCurrentMedicineList2Route;
  late TextEditingController controllerCurrentMedicineList2Frequency;
  late TextEditingController controllerCurrentMedicineList2RxStartDate;
  late TextEditingController controllerCurrentMedicineList2RxEndDate;
  late TextEditingController controllerCurrentMedicineList2Indication;

  late TextEditingController controllerCurrentMedicineList3Brand;
  late bool isDrugsuspected3;
  late TextEditingController controllerCurrentMedicineList3Gen;
  late TextEditingController controllerCurrentMedicineList3Manufacturer;
  late TextEditingController controllerCurrentMedicineList3Batch;
  late TextEditingController controllerCurrentMedicineList3Dose;
  late TextEditingController controllerCurrentMedicineList3Route;
  late TextEditingController controllerCurrentMedicineList3Frequency;
  late TextEditingController controllerCurrentMedicineList3RxStartDate;
  late TextEditingController controllerCurrentMedicineList3RxEndDate;
  late TextEditingController controllerCurrentMedicineList3Indication;

  late TextEditingController controllerCurrentMedicineList4Brand;
  late bool isDrugsuspected4;
  late TextEditingController controllerCurrentMedicineList4Gen;
  late TextEditingController controllerCurrentMedicineList4Manufacturer;
  late TextEditingController controllerCurrentMedicineList4Batch;
  late TextEditingController controllerCurrentMedicineList4Dose;
  late TextEditingController controllerCurrentMedicineList4Route;
  late TextEditingController controllerCurrentMedicineList4Frequency;
  late TextEditingController controllerCurrentMedicineList4RxStartDate;
  late TextEditingController controllerCurrentMedicineList4RxEndDate;
  late TextEditingController controllerCurrentMedicineList4Indication;

  late TextEditingController controllerCurrentMedicineList5Brand;
  late bool isDrugsuspected5;
  late TextEditingController controllerCurrentMedicineList5Gen;
  late TextEditingController controllerCurrentMedicineList5Manufacturer;
  late TextEditingController controllerCurrentMedicineList5Batch;
  late TextEditingController controllerCurrentMedicineList5Dose;
  late TextEditingController controllerCurrentMedicineList5Route;
  late TextEditingController controllerCurrentMedicineList5Frequency;
  late TextEditingController controllerCurrentMedicineList5RxStartDate;
  late TextEditingController controllerCurrentMedicineList5RxEndDate;
  late TextEditingController controllerCurrentMedicineList5Indication;


  late TextEditingController controllerPastMedicineList1Brand;
  late TextEditingController controllerPastMedicineList1Gen;
  late TextEditingController controllerPastMedicineList1Manufacturer;
  late TextEditingController controllerPastMedicineList1Batch;
  late TextEditingController controllerPastMedicineList1Dose;
  late TextEditingController controllerPastMedicineList1Route;
  late TextEditingController controllerPastMedicineList1Frequency;
  late TextEditingController controllerPastMedicineList1RxStartDate;
  late TextEditingController controllerPastMedicineList1RxEndDate;
  late TextEditingController controllerPastMedicineList1Indication;

  late TextEditingController controllerPastMedicineList2Brand;
  late TextEditingController controllerPastMedicineList2Gen;
  late TextEditingController controllerPastMedicineList2Manufacturer;
  late TextEditingController controllerPastMedicineList2Batch;
  late TextEditingController controllerPastMedicineList2Dose;
  late TextEditingController controllerPastMedicineList2Route;
  late TextEditingController controllerPastMedicineList2Frequency;
  late TextEditingController controllerPastMedicineList2RxStartDate;
  late TextEditingController controllerPastMedicineList2RxEndDate;
  late TextEditingController controllerPastMedicineList2Indication;

  late TextEditingController controllerPastMedicineList3Brand;
  late TextEditingController controllerPastMedicineList3Gen;
  late TextEditingController controllerPastMedicineList3Manufacturer;
  late TextEditingController controllerPastMedicineList3Batch;
  late TextEditingController controllerPastMedicineList3Dose;
  late TextEditingController controllerPastMedicineList3Route;
  late TextEditingController controllerPastMedicineList3Frequency;
  late TextEditingController controllerPastMedicineList3RxStartDate;
  late TextEditingController controllerPastMedicineList3RxEndDate;
  late TextEditingController controllerPastMedicineList3Indication;

  late TextEditingController controllerPastMedicineList4Brand;
  late TextEditingController controllerPastMedicineList4Gen;
  late TextEditingController controllerPastMedicineList4Manufacturer;
  late TextEditingController controllerPastMedicineList4Batch;
  late TextEditingController controllerPastMedicineList4Dose;
  late TextEditingController controllerPastMedicineList4Route;
  late TextEditingController controllerPastMedicineList4Frequency;
  late TextEditingController controllerPastMedicineList4RxStartDate;
  late TextEditingController controllerPastMedicineList4RxEndDate;
  late TextEditingController controllerPastMedicineList4Indication;

  late TextEditingController controllerPastMedicineList5Brand;
  late TextEditingController controllerPastMedicineList5Gen;
  late TextEditingController controllerPastMedicineList5Manufacturer;
  late TextEditingController controllerPastMedicineList5Batch;
  late TextEditingController controllerPastMedicineList5Dose;
  late TextEditingController controllerPastMedicineList5Route;
  late TextEditingController controllerPastMedicineList5Frequency;
  late TextEditingController controllerPastMedicineList5RxStartDate;
  late TextEditingController controllerPastMedicineList5RxEndDate;
  late TextEditingController controllerPastMedicineList5Indication;

  late TextEditingController controllerAdrsHaltResolution;
  late TextEditingController controllerAdrsResumeResolution;
  late TextEditingController controllerLabInvestigationReport;
  late TextEditingController controllerReactionSeverity;
  late TextEditingController controllerReactionSeriousness;
  late TextEditingController controllerSeriousnessCriteria;
  late TextEditingController controllerActionTaken;
  late TextEditingController controllerOutcome;
  late TextEditingController controllerOtherComment;

  late TextEditingController controllerReporterFirstName;
  late TextEditingController controllerReporterOtherNames;
  late TextEditingController controllerReporterCadre;
  late TextEditingController controllerReporterContact;
  late TextEditingController controllerReporterEmail;
  late TextEditingController controllerReportDate;
  late TextEditingController controllerReportStatus;



  final textFieldFocusNode = FocusNode();
  bool _obscured = true;
  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return; // If focus is on text field, don't unfocus
      textFieldFocusNode.canRequestFocus = false;     // Prevents focus if tap on eye
    });
  }

  List<String> reportOnitems = ['SUSPECTED ADVERSE DRUG REACTION', 'THERAPUETIC INEFFECTIVENESS',];
  String? selectedReportOnItem = 'SUSPECTED ADVERSE DRUG REACTION';

  List<String> reportTypeitems = ['INITIAL REPORT', 'FOLLOW UP REPORT'];
  String? selectedReportTypeItem = 'INITIAL REPORT';

  List<String> productCategoryitems = ['MEDICINAL PRODUCT', 'BLOOD AND BLOOD PRODUCTS', 'HERBAL PRODUCTS', 'COSMECEUTICALS','MEDICINAL DEVICE'];
  String? selectedProductCategoryItem = 'MEDICINAL PRODUCT';

  List<String> institutionCountyitems = ["MOMBASA COUNTY","KWALE COUNTY","KWALE COUNTY","KILIFI COUNTY","TANA RIVER COUNTY","LAMU COUNTY","TAITA-TAVETA COUNTY","GARISSA COUNTY","WAJIR COUNTY","MANDERA COUNTY","MARSABIT COUNTY","ISIOLO COUNTY","MERU COUNTY","THARAKA-NITHI COUNTY","EMBU COUNTY","KITUI COUNTY","MACHAKOS COUNTY","MAKUENI COUNTY","NYANDARUA COUNTY","NYERI COUNTY","KIRINYAGA COUNTY","MURANG'A COUNTY","KIAMBU COUNTY","TURKANA COUNTY","WEST POKOT COUNTY","SAMBURU COUNTY","TRANS NZOIA COUNTY","UASIN GISHU COUNTY","ELGEYO-MARAKWET COUNTY","NANDI COUNTY,BARINGO COUNTY","LAIKIPIA COUNTY","NAKURU COUNTY","NAROK COUNTY","KAJIADO COUNTY","KERICHO COUNTY","BOMET COUNTY","KAKAMEGA COUNTY","VIHIGA COUNTY","BUNGOMA COUNTY","BUSIA COUNTY","SIAYA COUNTY","KISUMU COUNTY","HOMA BAY COUNTY","MIGORI COUNTY","KISII COUNTY","NYAMIRA COUNTY","NAIROBI COUNTY"];
  String? selectedInstitutionCountyItem = "NAIROBI COUNTY";

  List<String> patientAgeBracketitems = ['0 - 2', '3 - 12', '13 - 19', '20 - 29', '30 - 39', '40 - 49', '50 -59', '60 - 69', '70 - 79', '80 - 89', '90 - 99', '100~'];
  String? selectedPatientAgeBracketItem = '20 - 29';

  List<String> patientSexitems = ['MALE', 'FEMALE'];
  String? selectedPatientSexItem = 'MALE';

  List<String> pregnancyStatusitems = ['NOT APPLICABLE', 'NOT PREGNANT', '1ST TRIMESTER', '2ND TRIMESTER', '3RD TRIMESTER'];
  String? selectedPregnancyStatusItem = 'NOT APPLICABLE';

  List<String> routeAdministrationitems = ['ORAL', 'SUBLINGUAL', 'BUCCAL', 'RECTAL', 'INTRAVENOUS', 'INTRAMUSCULAR', 'SUBCUTANEOUS', 'INTRANASAL', 'INHALATIONAL', 'VAGINAL', 'TRANSDERMAL', 'INTRAMYOCARDIAL', 'INTRAPERICARDIAL', 'INTRATHECAL', 'TOPICAL'];
  String? selectedRouteAdminidtrationItem = 'ORAL';

  List<String> doseFrequencyitems = ['O.D', 'B.D', 'T.D.S', 'Q.I.D', 'NOCT.', 'STAT','Q.O.D', 'T.I.W', 'S.O.S', 'S.A', 'Q.W.K', 'Q.Q.H', 'Q.1.H', 'Q.2.H', 'Q.3.H'];
  String? selectedDoseFrequencyItem = 'T.D.S';

  List<String> adrsHaltResolutionitems = ['YES', 'NO', 'UNKNOWN', 'NOT APPLICABLE'];
  String? selectedAdrsHaltResolutionItem = 'NO';

  List<String> adrsResumeResolutionitems = ['YES', 'NO', 'UNKNOWN', 'NOT APPLICABLE'];
  String? selectedAdrsResumeResolutionItem = 'NO';

  List<String> reactionSeverityitems = ['MILD', 'MODERATE', 'SEVERE', 'FATAL', 'UNKNOWN'];
  String? selectedReactionSeverityItem = 'MILD';

  List<String> reactionSeriousnessitems = ['YES', 'NO'];
  String? selectedReactionSeriousnessItem = 'YES';


  List<String> seriousnessCriteriaitems = ['NO INTERVENTION', 'SUPERVISED OBSERVATION','HOSPITALIZATION','PROLONGED HOSPITALIZATION','DISABILITY','CONGENITAL ANOMALY','LIFE THREATENING', 'DEATH' ];
  String? selectedSeriousnessCriteriaItem = 'HOSPITALIZATION';

  List<String> actionTakenitems = ['DRUG WITHDRAWN','DOSE REDUCED','DOSE INCREASED','DOSE NOT CHANGED','NOT APPLICABLE', 'UNKNOWN' ];
  String? selectedActionTakenItem = 'DRUG WITHDRAWN';

  List<String> outcomeitems = ['RECOVERED','RECOVERED WITH SEQUELAE','RECOVERING','NOT RECOVERED','DEATH', 'UNKNOWN' ];
  String? selectedOutcomeItem = 'RECOVERED';

  List<String> reportStatusitems = ['REPORT RECEIVED: PROCESSING...','REPORT SENT TO MANUFACTURER AND PPB','PLEASE AWAIT COMMUNIQUE','REPORT PROCESSED AND ARCHIVED SUCCESSFULLY','RESOLVED',];
  String? selectedReportStatusItem = 'REPORT RECEIVED: PROCESSING...';


  @override
  void initState() {
    super.initState();
    initAdrsform();
  }

  void initAdrsform() {
    controllerReportTitle = TextEditingController();
    controllerReportOn = TextEditingController();
    controllerReportType = TextEditingController();
    controllerProductCategory = TextEditingController();
    controllerInstitutionName = TextEditingController();
    controllerInstitutionContact = TextEditingController();
    controllerInstitutionFacilityCode = TextEditingController();
    controllerInstitutionCounty = TextEditingController();
    controllerPatientName = TextEditingController();
    controllerPatientIpOpNo = TextEditingController();
    controllerPatientAgeBracket = TextEditingController();
    controllerPatientAddress = TextEditingController();
    controllerPatientWardClinic = TextEditingController();
    controllerPatientSex = TextEditingController();
    controllerPatientAllergies = TextEditingController();
    controllerPregnancyStatus = TextEditingController();
    controllerPatientWeight = TextEditingController();
    controllerPatientHeight = TextEditingController();
    controllerSuspectedADRsOnset = TextEditingController();
    controllerAdrsDescription = TextEditingController();
    controllerPatientMedicalHistory= TextEditingController();

    controllerCurrentMedicineList1Brand = TextEditingController();
    isDrugsuspected1 = false;
    controllerCurrentMedicineList1Gen = TextEditingController();
    controllerCurrentMedicineList1Batch = TextEditingController();
    controllerCurrentMedicineList1Manufacturer = TextEditingController();
    controllerCurrentMedicineList1Dose = TextEditingController();
    controllerCurrentMedicineList1Route = TextEditingController();
    controllerCurrentMedicineList1Frequency = TextEditingController();
    controllerCurrentMedicineList1RxStartDate = TextEditingController();
    controllerCurrentMedicineList1RxEndDate = TextEditingController();
    controllerCurrentMedicineList1Indication = TextEditingController();

    controllerCurrentMedicineList2Brand = TextEditingController();
    isDrugsuspected2 = false;
    controllerCurrentMedicineList2Gen = TextEditingController();
    controllerCurrentMedicineList2Batch = TextEditingController();
    controllerCurrentMedicineList2Manufacturer = TextEditingController();
    controllerCurrentMedicineList2Dose = TextEditingController();
    controllerCurrentMedicineList2Route = TextEditingController();
    controllerCurrentMedicineList2Frequency = TextEditingController();
    controllerCurrentMedicineList2RxStartDate = TextEditingController();
    controllerCurrentMedicineList2RxEndDate = TextEditingController();
    controllerCurrentMedicineList2Indication = TextEditingController();

    controllerCurrentMedicineList3Brand = TextEditingController();
    isDrugsuspected3 = false;
    controllerCurrentMedicineList3Gen = TextEditingController();
    controllerCurrentMedicineList3Batch = TextEditingController();
    controllerCurrentMedicineList3Manufacturer = TextEditingController();
    controllerCurrentMedicineList3Dose = TextEditingController();
    controllerCurrentMedicineList3Route = TextEditingController();
    controllerCurrentMedicineList3Frequency = TextEditingController();
    controllerCurrentMedicineList3RxStartDate = TextEditingController();
    controllerCurrentMedicineList3RxEndDate = TextEditingController();
    controllerCurrentMedicineList3Indication = TextEditingController();

    controllerCurrentMedicineList4Brand = TextEditingController();
    isDrugsuspected4 = false;
    controllerCurrentMedicineList4Gen = TextEditingController();
    controllerCurrentMedicineList4Batch = TextEditingController();
    controllerCurrentMedicineList4Manufacturer = TextEditingController();
    controllerCurrentMedicineList4Dose = TextEditingController();
    controllerCurrentMedicineList4Route = TextEditingController();
    controllerCurrentMedicineList4Frequency = TextEditingController();
    controllerCurrentMedicineList4RxStartDate = TextEditingController();
    controllerCurrentMedicineList4RxEndDate = TextEditingController();
    controllerCurrentMedicineList4Indication = TextEditingController();

    controllerCurrentMedicineList5Brand = TextEditingController();
    isDrugsuspected5 = false;
    controllerCurrentMedicineList5Gen = TextEditingController();
    controllerCurrentMedicineList5Batch = TextEditingController();
    controllerCurrentMedicineList5Manufacturer = TextEditingController();
    controllerCurrentMedicineList5Dose = TextEditingController();
    controllerCurrentMedicineList5Route = TextEditingController();
    controllerCurrentMedicineList5Frequency = TextEditingController();
    controllerCurrentMedicineList5RxStartDate = TextEditingController();
    controllerCurrentMedicineList5RxEndDate = TextEditingController();
    controllerCurrentMedicineList5Indication = TextEditingController();

    controllerPastMedicineList1Brand  = TextEditingController();
    controllerPastMedicineList1Gen = TextEditingController();
    controllerPastMedicineList1Batch = TextEditingController();
    controllerPastMedicineList1Manufacturer = TextEditingController();
    controllerPastMedicineList1Dose = TextEditingController();
    controllerPastMedicineList1Route = TextEditingController();
    controllerPastMedicineList1Frequency = TextEditingController();
    controllerPastMedicineList1RxStartDate = TextEditingController();
    controllerPastMedicineList1RxEndDate = TextEditingController();
    controllerPastMedicineList1Indication = TextEditingController();

    controllerPastMedicineList2Brand  = TextEditingController();
    controllerPastMedicineList2Gen = TextEditingController();
    controllerPastMedicineList2Batch = TextEditingController();
    controllerPastMedicineList2Manufacturer = TextEditingController();
    controllerPastMedicineList2Dose = TextEditingController();
    controllerPastMedicineList2Route = TextEditingController();
    controllerPastMedicineList2Frequency = TextEditingController();
    controllerPastMedicineList2RxStartDate = TextEditingController();
    controllerPastMedicineList2RxEndDate = TextEditingController();
    controllerPastMedicineList2Indication = TextEditingController();


    controllerPastMedicineList3Brand  = TextEditingController();
    controllerPastMedicineList3Gen = TextEditingController();
    controllerPastMedicineList3Batch = TextEditingController();
    controllerPastMedicineList3Manufacturer = TextEditingController();
    controllerPastMedicineList3Dose = TextEditingController();
    controllerPastMedicineList3Route = TextEditingController();
    controllerPastMedicineList3Frequency = TextEditingController();
    controllerPastMedicineList3RxStartDate = TextEditingController();
    controllerPastMedicineList3RxEndDate = TextEditingController();
    controllerPastMedicineList3Indication = TextEditingController();

    controllerPastMedicineList4Brand  = TextEditingController();
    controllerPastMedicineList4Gen = TextEditingController();
    controllerPastMedicineList4Batch = TextEditingController();
    controllerPastMedicineList4Manufacturer = TextEditingController();
    controllerPastMedicineList4Dose = TextEditingController();
    controllerPastMedicineList4Route = TextEditingController();
    controllerPastMedicineList4Frequency = TextEditingController();
    controllerPastMedicineList4RxStartDate = TextEditingController();
    controllerPastMedicineList4RxEndDate = TextEditingController();
    controllerPastMedicineList4Indication = TextEditingController();


    controllerPastMedicineList5Brand  = TextEditingController();
    controllerPastMedicineList5Gen = TextEditingController();
    controllerPastMedicineList5Batch = TextEditingController();
    controllerPastMedicineList5Manufacturer = TextEditingController();
    controllerPastMedicineList5Dose = TextEditingController();
    controllerPastMedicineList5Route = TextEditingController();
    controllerPastMedicineList5Frequency = TextEditingController();
    controllerPastMedicineList5RxStartDate = TextEditingController();
    controllerPastMedicineList5RxEndDate = TextEditingController();
    controllerPastMedicineList5Indication = TextEditingController();


    controllerAdrsHaltResolution = TextEditingController();
    controllerAdrsResumeResolution = TextEditingController();
    controllerLabInvestigationReport = TextEditingController();
    controllerReactionSeverity = TextEditingController();
    controllerReactionSeriousness = TextEditingController();
    controllerSeriousnessCriteria = TextEditingController();
    controllerActionTaken = TextEditingController();
    controllerOutcome = TextEditingController();
    controllerOtherComment = TextEditingController();


    controllerReporterFirstName = TextEditingController();
    controllerReporterOtherNames = TextEditingController();
    controllerReporterCadre = TextEditingController();
    controllerReporterContact = TextEditingController();
    controllerReporterEmail = TextEditingController();
    controllerReportDate = TextEditingController();
    controllerReportStatus = TextEditingController();
  }

  @override
  Widget build(BuildContext context) =>
      Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text('ADRS REPORT',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                  const Text("This report consists of FIVE Sections. Please tap the sections below to open and fill all. You can also tap the 'skip' button to go to the next Section when necessary.", style: TextStyle(color: Colors.white), textAlign: TextAlign.justify,),
                  const SizedBox(height: 20,),

                  Card(key: itemKeyT,
                      color: Colors.blueGrey.shade600.withOpacity(0.6),
                      child:
                      Column(
                      children: [
                        const Text('SECTION A', style: TextStyle(color: Colors.white)),
                        Card(color: Colors.black.withOpacity(0.6),
                            child: ExpansionTile(
                              collapsedIconColor: Colors.white,
                              iconColor: Colors.green,
                              title: const Text('Preliminary info and Bio-Data', style: TextStyle(color: Colors.white)),
                              // trailing: Icon(color: Colors.white,_customIcon ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down),
                          children: [
                            buildReportTitle(),
                            buildReportOn(),
                            buildReportType(),
                            buildProductCategory(),
                            buildInstitutionName(),
                            buildInstitutionContact(),
                            buildInstitutionFacilityCode(),
                            buildInstitutionCounty(),
                            buildPatientName(),
                            buildPatientIpOpNo(),
                            buildPatientAgeBracket(),
                            buildPatientAddress(),
                            buildPatientWardClinic(),
                            buildPatientSex(),
                            buildPatientAllergies(),
                            buildPatientPregnancyStatus(),
                            buildPatientWeight(),
                            buildPatientHeight(),
                            buildSuspectedADRsOnset(),
                            buildAdrsDescription(),
                            buildPatientMedicalHistory(),
                          ],
                        )),
                      ],
                    )), //section A
                  Card(color: Colors.grey.shade700.withOpacity(0.6),
                    child:
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('SECTION B', style: TextStyle(color: Colors.white),),
                        ),

                      Card(color: Colors.blueGrey.shade800.withOpacity(0.6),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('Current Medication',style: TextStyle(color: Colors.white)),
                          ),
                          Card(color: Colors.black.withOpacity(0.6),
                            child: ExpansionTile(
                              collapsedIconColor: Colors.white,
                              iconColor: Colors.green,
                                title: const Text('Drugs currently used by Patient',style: TextStyle(color: Colors.white)),
                              // trailing: Icon(color: Colors.white,_customIcon ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down),
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("List all medicines being currently used by the patient including OTC and herbal products.", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                                ),
                                Card(color: Colors.grey.shade900.withOpacity(0.6),
                                  child: Column(
                                    children: [
                                      const Text("CURRENT MEDICINE 1",
                                        style: TextStyle(color: Colors.white,fontSize: 12),),
                                      buildCurrentMedicineList1Brand(),
                                      buildCurrentMedicineList1SuspectedDrug(),
                                      buildCurrentMedicineList1Gen(),
                                      buildCurrentMedicineList1Manufacturer(),
                                      buildCurrentMedicineList1Batch(),
                                      buildCurrentMedicineList1Dose(),
                                      buildCurrentMedicineList1Route(),
                                      buildCurrentMedicineList1Frequency(),
                                      buildCurrentMedicineList1RxStartDate(),
                                      buildCurrentMedicineList1RxEndDate(),
                                      buildCurrentMedicineList1Indication(),
                                    ],
                                  ),
                                ),
                                Card(color: Colors.blueGrey.shade700.withOpacity(0.6),
                                  child: Column(
                                    children: [
                                      const Text("CURRENT MEDICINE 2",
                                        style: TextStyle(color: Colors.white,fontSize: 12),),
                                      Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                              onPressed: () => scrollToItemC(),
                                              child: const Text('Skip', style: TextStyle(color: Colors.white,fontSize: 12), textAlign: TextAlign.right,) ),
                                        ],
                                      ),
                                      buildCurrentMedicineList2Brand(),
                                      buildCurrentMedicineList2SuspectedDrug(),
                                      buildCurrentMedicineList2Gen(),
                                      buildCurrentMedicineList2Manufacturer(),
                                      buildCurrentMedicineList2Batch(),
                                      buildCurrentMedicineList2Dose(),
                                      buildCurrentMedicineList2Route(),
                                      buildCurrentMedicineList2Frequency(),
                                      buildCurrentMedicineList2RxStartDate(),
                                      buildCurrentMedicineList2RxEndDate(),
                                      buildCurrentMedicineList2Indication(),
                                    ],
                                  ),
                                ),
                                Card(color: Colors.black26.withOpacity(0.6),
                                  child: Column(
                                    children: [
                                      const Text("CURRENT MEDICINE 3",
                                        style: TextStyle(color: Colors.white,fontSize: 12),),
                                      Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                              onPressed: () => scrollToItemC(),
                                              child: const Text('Skip', style: TextStyle(color: Colors.white,fontSize: 12), textAlign: TextAlign.right,) ),
                                        ],
                                      ),
                                      buildCurrentMedicineList3Brand(),
                                      buildCurrentMedicineList3SuspectedDrug(),
                                      buildCurrentMedicineList3Gen(),
                                      buildCurrentMedicineList3Manufacturer(),
                                      buildCurrentMedicineList3Batch(),
                                      buildCurrentMedicineList3Dose(),
                                      buildCurrentMedicineList3Route(),
                                      buildCurrentMedicineList3Frequency(),
                                      buildCurrentMedicineList3RxStartDate(),
                                      buildCurrentMedicineList3RxEndDate(),
                                      buildCurrentMedicineList3Indication(),
                                    ],
                                  ),
                                ),
                                Card(color: Colors.blueGrey.shade900.withOpacity(0.6),
                                  child: Column(
                                    children: [
                                      const Text("CURRENT MEDICINE 4",
                                        style: TextStyle(color: Colors.white,fontSize: 12),),
                                      Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                              onPressed: () => scrollToItemC(),
                                              child: const Text('Skip', style: TextStyle(color: Colors.white,fontSize: 12), textAlign: TextAlign.right,) ),
                                        ],
                                      ),
                                      buildCurrentMedicineList4Brand(),
                                      buildCurrentMedicineList4SuspectedDrug(),
                                      buildCurrentMedicineList4Gen(),
                                      buildCurrentMedicineList4Manufacturer(),
                                      buildCurrentMedicineList4Batch(),
                                      buildCurrentMedicineList4Dose(),
                                      buildCurrentMedicineList4Route(),
                                      buildCurrentMedicineList4Frequency(),
                                      buildCurrentMedicineList4RxStartDate(),
                                      buildCurrentMedicineList4RxEndDate(),
                                      buildCurrentMedicineList4Indication(),
                                    ],
                                  ),
                                ),
                                Card(
                                  color: Colors.black.withOpacity(0.6),
                                  child: Column(
                                    children: [
                                      const Text("CURRENT MEDICINE 5",
                                        style: TextStyle(color: Colors.white,fontSize: 12),),
                                      Row(mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                              onPressed: () => scrollToItemC(),
                                              child: const Text('Skip', style: TextStyle(color: Colors.white,fontSize: 12), textAlign: TextAlign.right,) ),
                                        ],
                                      ),
                                      buildCurrentMedicineList5Brand(),
                                      buildCurrentMedicineList5SuspectedDrug(),
                                      buildCurrentMedicineList5Gen(),
                                      buildCurrentMedicineList5Manufacturer(),
                                      buildCurrentMedicineList5Batch(),
                                      buildCurrentMedicineList5Dose(),
                                      buildCurrentMedicineList5Route(),
                                      buildCurrentMedicineList5Frequency(),
                                      buildCurrentMedicineList5RxStartDate(),
                                      buildCurrentMedicineList5RxEndDate(),
                                      buildCurrentMedicineList5Indication(),
                                    ],
                                  ),
                                ),

                              ],
                            ),

                          ),

                        ],
                      ),
                    ),
              
              
              
                ],
              )
              ), //section B
                  Card(key: itemKeyC,
                    color: Colors.grey.shade700.withOpacity(0.6),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('SECTION C', style: TextStyle(color: Colors.white),),
                        ),
                        Card(color: Colors.blueGrey.shade300.withOpacity(0.6),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Past Medication History', style: TextStyle(color: Colors.white),),
                              ),
                              Card(color: Colors.black.withOpacity(0.6),
                                child: ExpansionTile(
                                  collapsedIconColor: Colors.white,
                                  iconColor: Colors.green,
                                  title: const Text('Drugs used in the last 3 months', style: TextStyle(color: Colors.white),),
                                  // trailing: Icon(color: Colors.white,_customIcon ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down),
                                  children: <Widget>[
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text("List all medicines used in the last 3 months including OTC, herbals and if pregnant indicate medicines used in the 1st trimester", style: TextStyle(color: Colors.white,), textAlign: TextAlign.center,),
                                    ),
                                    Card(color: Colors.grey.shade900.withOpacity(0.6),
                                        child: Column(
                                          children: [
                                            const Text("PAST MEDICINE 1", style: TextStyle(color: Colors.white,fontSize: 12),),
                                            Row(mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                TextButton(
                                                    onPressed: () => scrollToItemD(),
                                                    child: const Text('Skip', style: TextStyle(color: Colors.white,fontSize: 12), textAlign: TextAlign.right,) ),
                                              ],
                                            ),
                                            buildPastMedicineList1Brand(),
                                            buildPastMedicineList1Gen(),
                                            buildPastMedicineList1Manufacturer(),
                                            buildPastMedicineList1Batch(),
                                            buildPastMedicineList1Dose(),
                                            buildPastMedicineList1Route(),
                                            buildPastMedicineList1Frequency(),
                                            buildPastMedicineList1RxStartDate(),
                                            buildPastMedicineList1RxEndDate(),
                                            buildPastMedicineList1Indication(),
                                          ],
                                        )
                                    ),
                                    Card(color: Colors.blueGrey.shade900.withOpacity(0.6),
                                      child: Column(
                                        children: [
                                          const Text("PAST MEDICINE 2",
                                            style: TextStyle(color: Colors.white,fontSize: 12),),
                                          Row(mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                  onPressed: () => scrollToItemD(),
                                                  child: const Text('Skip', style: TextStyle(color: Colors.white,fontSize: 12), textAlign: TextAlign.right,) ),
                                            ],
                                          ),
                                          buildPastMedicineList2Brand(),
                                          buildPastMedicineList2Gen(),
                                          buildPastMedicineList2Manufacturer(),
                                          buildPastMedicineList2Batch(),
                                          buildPastMedicineList2Dose(),
                                          buildPastMedicineList2Route(),
                                          buildPastMedicineList2Frequency(),
                                          buildPastMedicineList2RxStartDate(),
                                          buildPastMedicineList2RxEndDate(),
                                          buildPastMedicineList2Indication(),
                                        ],
                                      ),
                                    ),
                                    Card(color: Colors.grey.shade900.withOpacity(0.6),
                                        child: Column(
                                          children: [
                                            const Text("PAST MEDICINE 3",
                                              style: TextStyle(color: Colors.white,fontSize: 12),),
                                            Row(mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                TextButton(
                                                    onPressed: () => scrollToItemD(),
                                                    child: const Text('Skip', style: TextStyle(color: Colors.white,fontSize: 12), textAlign: TextAlign.right,) ),
                                              ],
                                            ),
                                            buildPastMedicineList3Brand(),
                                            buildPastMedicineList3Gen(),
                                            buildPastMedicineList3Manufacturer(),
                                            buildPastMedicineList3Batch(),
                                            buildPastMedicineList3Dose(),
                                            buildPastMedicineList3Route(),
                                            buildPastMedicineList3Frequency(),
                                            buildPastMedicineList3RxStartDate(),
                                            buildPastMedicineList3RxEndDate(),
                                            buildPastMedicineList3Indication(),
                                          ],
                                        )
                                    ),
                                    Card(color: Colors.blueGrey.shade700.withOpacity(0.6),
                                      child: Column(
                                        children: [
                                          const Text("PAST MEDICINE 4",
                                            style: TextStyle(color: Colors.white,fontSize: 12),),
                                          Row(mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                  onPressed: () => scrollToItemD(),
                                                  child: const Text('Skip', style: TextStyle(color: Colors.white,fontSize: 12), textAlign: TextAlign.right,) ),
                                            ],
                                          ),
                                          buildPastMedicineList4Brand(),
                                          buildPastMedicineList4Gen(),
                                          buildPastMedicineList4Manufacturer(),
                                          buildPastMedicineList4Batch(),
                                          buildPastMedicineList4Dose(),
                                          buildPastMedicineList4Route(),
                                          buildPastMedicineList4Frequency(),
                                          buildPastMedicineList4RxStartDate(),
                                          buildPastMedicineList4RxEndDate(),
                                          buildPastMedicineList4Indication(),
                                        ],
                                      ),
                                    ),
                                    Card(color: Colors.blueGrey.shade900.withOpacity(0.6),
                                      child: Column(
                                        children: [
                                          const Text("PAST MEDICINE 5",
                                            style: TextStyle(color: Colors.white,fontSize: 12),),
                                          Row(mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                  onPressed: () => scrollToItemD(),
                                                  child: const Text('Skip', style: TextStyle(color: Colors.white,fontSize: 12), textAlign: TextAlign.right,) ),
                                            ],
                                          ),
                                          buildPastMedicineList5Brand(),
                                          buildPastMedicineList5Gen(),
                                          buildPastMedicineList5Manufacturer(),
                                          buildPastMedicineList5Batch(),
                                          buildPastMedicineList5Dose(),
                                          buildPastMedicineList5Route(),
                                          buildPastMedicineList5Frequency(),
                                          buildPastMedicineList5RxStartDate(),
                                          buildPastMedicineList5RxEndDate(),
                                          buildPastMedicineList5Indication(),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )

                            ],
                          ),
                        )
                      ],
                    ),
              
                  ), //section C
                  Card(key: itemKeyD,
                    color: Colors.grey.shade700.withOpacity(0.6),
                    child: Column(
                      children: [
                        const Text('SECTION D',style: TextStyle(color: Colors.white),),
                        Card(color: Colors.blueGrey.shade300.withOpacity(0.6),
                          child: Column(
                            children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Intervention History", style: TextStyle(color: Colors.white),),
                            ),
                              Card(color: Colors.blueGrey.shade900.withOpacity(0.6),
                              child: ExpansionTile(
                                collapsedIconColor: Colors.white,
                                iconColor: Colors.green,
                                title: const Text("Procedures to treat Reaction", style: TextStyle(color: Colors.white),),
                                // trailing: Icon(color: Colors.white,_customIcon ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down),
                                children: <Widget>[
                                  const Text("Description of treatments, procedures and other actions taken to prevent or treat the reaction or improve patient's health in any other way.", style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                  buildAdrsHaltResolution(),
                                  buildAdrsResumeResolution(),
                                  buildLabInvestigationReport(),
                                  buildReactionSeverity(),
                                  buildReactionSeriousness(),
                                  buildSeriousnessCriteria(),
                                  buildActionTaken(),
                                  buildOutcome(),
                                  buildOtherComment(),
                                ],
                                // onExpansionChanged: (bool expanded) {
                                //   setState(() => _customIcon = expanded);},
                              )
                            )
                            ],
                          ),
                        )
                      ],
                    ),
                  ), //section D
                  Card(color: Colors.grey.shade700.withOpacity(0.6),
                    child: Column(
                      children: [
                        const Text('SECTION E', style: TextStyle(color: Colors.white),),
                        Card(color: Colors.blueGrey.shade300.withOpacity(0.6),
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Credentials',style: TextStyle(color: Colors.white),),
                              ),

              
                              Card(color: Colors.blueGrey.shade900.withOpacity(0.6),
                                child: ExpansionTile(
                                  collapsedIconColor: Colors.white,
                                  iconColor: Colors.green,
                                  title: const Text('Reporter Identification Data',style: TextStyle(color: Colors.white),),
                                  // trailing: Icon(color: Colors.white, _customIcon ? Icons.arrow_drop_down_circle  : Icons.arrow_drop_down),
                                  children: <Widget>[
                                    buildReporterFirstName(),
                                    buildReporterOtherNames(),
                                    buildReporterCadre(),
                                    buildReporterContact(),
                                    buildReporterEmail(),
                                    buildReportDate(),
                                    buildReportStatus(),
                                    Row(mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                            onPressed: () => scrollToItemT(),
                                            child: const Row(
                                              children: [
                                                Text('Top', style: TextStyle(color: Colors.white,fontSize: 12), textAlign: TextAlign.right,),
                                                Icon(Icons.arrow_drop_up, size: 18, ),
                                              ],
                                            ),),
                                      ],
                                    ),
                                    buildSubmit(),
                                    const SizedBox(height: 50,)
                                  ],
                                  // onExpansionChanged: (bool expanded) {
                                  //   setState(() => _customIcon = expanded);
                                  // },
                                ),
                              ),


                              // Card(color: Colors.black,
                              //   child: ExpansionTile(
                              //     title: Text('Try this Expansion thing', style: TextStyle(color: Colors.white)),
                              //     trailing: Icon(_customIcon ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down),
                              //     children: <Widget>[
                              //       buildReporterFirstName(),
                              //       buildReporterOtherNames(),
                              //       buildReporterCadre(),
                              //       buildReporterContact(),
                              //       buildReporterEmail(),
                              //       buildReportDate(),
                              //     ],
                              //     onExpansionChanged: (bool expanded) {
                              //       setState(() => _customIcon = expanded);
                              //     },
                              //   ),
                              // ),tested ExpansionTile Example

                            ],
                          )
                        ),


                      ],
                    ),
                  ),

                  const SizedBox(height: 60,)
                  //section E
                ]
              
                        // Stepper(
                        //   physics:ClampingScrollPhysics(),
                        //   // controlsBuilder: (context, controller) => Row(
                        //   //     children: [
                        //   //       TextButton(
                        //   //           onPressed: controller.onStepContinue,
                        //   //           child: Text(' ', style: TextStyle(color: Colors.white),),),
                        //   //       TextButton(
                        //   //           onPressed: controller.onStepCancel,
                        //   //           child: Text(' ', style: TextStyle(color: Colors.white),))
                        //   //     ],
                        //   //   ),
                        //   // physics: const ClampingScrollPhysics(),
                        //     steps: getSteps(),
                        //         onStepTapped: (int index){ setState(() {
                        //           _currentStep = index;
                        //           // _controller.animateTo(
                        //           //   0,
                        //           //   duration: Duration(milliseconds: 1500),
                        //           //   curve: Curves.bounceIn,
                        //           // );
                        //         });},
                        //       //   onStepCancel: () {
                        //       // if (_currentStep > 0){
                        //       //   setState(() {
                        //       //     _currentStep--;
                        //       //     _controller.animateTo(
                        //       //         0,
                        //       //       duration: Duration(milliseconds: 1500),
                        //       //       curve: Curves.bounceIn,
                        //       //     );
                        //       //   });
                        //       //     }
                        //       //     },
                        //   currentStep: _currentStep,
                        //   //           onStepContinue: (){
                        //   //     if(_currentStep == getSteps().length -1)
                        //   //     // if(isLastStep){
                        //   //     //   showDialog(context: context, builder: (BuildContext context){
                        //   //     //     return AlertDialog(
                        //   //     //       title: const Text('ADRs REPORT SUBMITTED'),
                        //   //     //       content: const Text('Your ADRs Report has been Submitted Successfully'),
                        //   //     //       actions: [
                        //   //     //         TextButton(onPressed: () {
                        //   //     //           Navigator.pop(context);
                        //   //     //         }, child: const Text('OK'))
                        //   //     //       ],
                        //   //     //     );
                        //   //     //   });
                        //   //     // }else
                        //   //     {
                        //   //       setState(() {
                        //   //         _currentStep++;
                        //   //         _controller.animateTo(
                        //   //           0,
                        //   //           duration: Duration(milliseconds: 1500),
                        //   //           curve: Curves.bounceIn,
                        //   //         );
                        //   //       });
                        //   //     } else {
                        //   //       setState(() {
                        //   //         _currentStep = 0;
                        //   //       });
                        //   //     }
                        //   // }
                        // )
                      ),
            )));


  Widget buildReportTitle() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerReportTitle,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: 'e.g. DRUG-X RELATED RASH',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Report Title',
      labelStyle:const TextStyle(color: Colors.white),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade600),
          borderRadius: BorderRadius.circular(12)
          ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Title' : null,
    ),
  );
  Widget buildReportOn() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        // value: selectedReportOnItem,
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
            hintText: 'SELECT ONE OPTION',
            hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Report On',
            labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select Report on Option' : null,
          items: reportOnitems.map((item) => DropdownMenuItem<String>(value: item,
            child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
          onChanged: (item) => setState(() => selectedReportOnItem = item),),
    ),
  );
  Widget buildReportType() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
          // value: selectedReportTypeItem,
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
            hintText: 'SELECT ONE OPTION',
            hintStyle: const TextStyle(color: Colors.white60),
            labelText: 'Report Type',
            labelStyle:const TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
                borderRadius: BorderRadius.circular(12)
            ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select Report Type Option' : null,
        items: reportTypeitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedReportTypeItem = item),),
    ),
  );
  Widget buildProductCategory() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        // value: selectedProductCategoryItem,
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
            labelText: 'Product Category',
            labelStyle:const TextStyle(color: Colors.white),
            hintText: 'SELECT ONE OPTION',
            hintStyle: const TextStyle(color: Colors.white60),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
                borderRadius: BorderRadius.circular(12)
            )
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select Product Category Option' : null,
        items: productCategoryitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedProductCategoryItem = item),),
    ),
  );
  Widget buildInstitutionName() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerInstitutionName,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          hintText: 'e.g. MOI COUNTY REFERRAL HOSPITAL',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Institution Name',
          labelStyle:const TextStyle(color: Colors.white),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Institution Name' : null,
    ),
  );
  Widget buildInstitutionContact() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerInstitutionContact,
      style: const TextStyle(color: Colors.white),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
    FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
          hintText: 'e.g. 254708206492',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Institution Contact',
          labelStyle:const TextStyle(color: Colors.white),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Institution Contact' : null,
    ),
  );
  Widget buildInstitutionFacilityCode() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerInstitutionFacilityCode,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          hintText: 'e.g. MLF11641',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Institution facility Code',
          labelStyle:const TextStyle(color: Colors.white),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Institution Facility Code' : null,
    ),
  );
  Widget buildInstitutionCounty() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        // value: selectedInstitutionCountyItem,
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
            hintText: 'SELECT ONE OPTION',
            hintStyle: const TextStyle(color: Colors.white60),
            labelText: 'Institution County',
            labelStyle:const TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
                borderRadius: BorderRadius.circular(12)
            )),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select Institution County' : null,
        isDense: true,
        items: institutionCountyitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedInstitutionCountyItem = item),),
    ),
  );
  Widget buildPatientName() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerPatientName,
      style: const TextStyle(color: Colors.white),
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscured,
      decoration: InputDecoration(
        hintText: 'e.g. P****K****',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Patient Full Name/Initials',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          // borderSide: BorderSide.none,              // No border
          borderRadius: BorderRadius.circular(12),
        ),
        // floatingLabelBehavior: FloatingLabelBehavior.never, //Hides label on focus or if filled
        // filled: true, // Needed for adding a fill color
        // fillColor: Colors.grey.shade800,
        isDense: true,  // Reduces height a bit
        prefixIcon: const Icon(Icons.lock_rounded, size: 24),
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
          child: GestureDetector(
            onTap: _toggleObscured,
            child: Icon(
              _obscured
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              size: 24,
            ),
          ),
        ),
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Patient full Name/Initials' : null,
      // focusNode: textFieldFocusNode,
      textCapitalization: TextCapitalization.characters,
          ),
    );
  Widget buildPatientIpOpNo() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerPatientIpOpNo,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: 'e.g. IPNO/12023',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Patient IP/OP No',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Patient IP/OP No' : null,
    ),
  );
  Widget buildPatientAgeBracket() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        // value: selectedPatientAgeBracketItem,
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Patient Age Bracket',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Enter Patient Age Bracket' : null,
        items: patientAgeBracketitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedPatientAgeBracketItem = item),),
    ),
  );
  Widget buildPatientAddress() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscured,
      // focusNode: textFieldFocusNode,
      controller: controllerPatientAddress,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: 'e.g. 80300 - 169 Voi',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Patient Address',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
        prefixIcon: const Icon(Icons.lock_rounded, size: 24),
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
          child: GestureDetector(
            onTap: _toggleObscured,
            child: Icon(
              _obscured
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              size: 24,
            ),
          ),
        ),
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Patient Address' : null,
    ),
  );
  Widget buildPatientWardClinic() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerPatientWardClinic,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: 'e.g. Male Ward/Diabetes Clinic',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Patient Ward/Clinic',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Patient Ward/Clinic' : null,
    ),
  );
  Widget buildPatientSex() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        // value: selectedPatientSexItem,
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Patient Sex',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select Patient Sex' : null,
        items: patientSexitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedPatientSexItem = item),),
    ),
  );
  Widget buildPatientAllergies() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerPatientAllergies,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Type 'NO', if 'YES', Please Specify...",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Patient Allergies',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Patient Allergy info' : null,
    ),
  );
  Widget buildPatientPregnancyStatus() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        // value: selectedPregnancyStatusItem,
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Pregnancy Status',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select Pregnancy Status' : null,
        items:pregnancyStatusitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedPregnancyStatusItem = item),),
    ),
  );
  Widget buildPatientWeight() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerPatientWeight,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: 'e.g. 78',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Patient Weight (in Kg)',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Patient Weight' : null,
    ),
  );
  Widget buildPatientHeight() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerPatientHeight,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: 'e.g. 150',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Patient Height (in cm)',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Patient Height' : null,
    ),
  );
  Widget buildSuspectedADRsOnset() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerSuspectedADRsOnset,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Suspected Adverse Reaction Onset',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Suspected Adverse Reaction Onset Date' : null,
    ),
  );
  Widget buildPatientMedicalHistory() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerPatientMedicalHistory,
      style: const TextStyle(color: Colors.white),maxLines:8,
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "Other relevant history including pre-existing medical conditions e.g. allergies, smoking, alcohol use, hepatic/ renal dysfunction etc",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Patient Medical History',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),

    ),
  );
  Widget buildAdrsDescription() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerAdrsDescription,
      style: const TextStyle(color: Colors.white),maxLines:8,
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. 'Patient with an extensive rash was referred urgently to hospital. The rash started on the backs of her hands and spread very quickly to the arms, trunk, neck, and face. The lesions consist of concentric rings with frank blistering in some areas. Lesions have also started to appear on her lips and inside her mouth.'",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Brief Description of Reaction',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Brief Description of Reaction' : null,
    ),
  );

  Widget buildCurrentMedicineList1Brand() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList1Brand,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Agumentin",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Brand Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Brand Name' : null,
    ),
  );
  Widget buildCurrentMedicineList1SuspectedDrug() => SwitchListTile(
    inactiveTrackColor: Colors.red,
      activeColor: Colors.green,
      value: isDrugsuspected1,
      title:const Text("Drug Suspected to Cause Adverse Reaction?",
        style: TextStyle(color: Colors.white,fontSize: 16),),
      onChanged: (value) {setState(() {
        isDrugsuspected1 = value;
      });});
  Widget buildCurrentMedicineList1Gen() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList1Gen,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Amoxiclav",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Generic Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Generic Name' : null,
    ),
  );
  Widget buildCurrentMedicineList1Manufacturer() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList1Manufacturer,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. GlaxoSmithKline Limited",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Manufacturer',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Manufacturer' : null,
    ),
  );
  Widget buildCurrentMedicineList1Batch() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList1Batch,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. CB2372828",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Batch/Lot No',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Batch/Lot No' : null,
    ),
  );
  Widget buildCurrentMedicineList1Dose() => Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        TextFormField(
          controller: controllerCurrentMedicineList1Dose,
          style: const TextStyle(color: Colors.white),
          textCapitalization: TextCapitalization.characters,
          decoration: InputDecoration(
            hintText: "e.g. 657mg",
            hintStyle: const TextStyle(color: Colors.white60),
            labelText: 'Dose',
            labelStyle:const TextStyle(color: Colors.white),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600),
                borderRadius: BorderRadius.circular(12)
            ),
            isDense: false,
          ),
          validator: (value) =>
          value != null && value.isEmpty ? 'Enter Dose' : null,
        ),
      );
  Widget buildCurrentMedicineList1Route() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        // value: selectedRouteAdminidtrationItem,
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Administration Route',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: routeAdministrationitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedRouteAdminidtrationItem = item),),
    ),
  );
  Widget buildCurrentMedicineList1Frequency() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        // value: selectedDoseFrequencyItem,
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Dose Frequency',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: doseFrequencyitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedDoseFrequencyItem = item),),
    ),
  );
  Widget buildCurrentMedicineList1RxStartDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerCurrentMedicineList1RxStartDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment Start Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Treatment Start Date' : null,
    ),
  );
  Widget buildCurrentMedicineList1RxEndDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerCurrentMedicineList1RxEndDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment End Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Treatment End Date' : null,
    ),
  );
  Widget buildCurrentMedicineList1Indication() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList1Indication,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Cellulitis in the 1st Trimester",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Indication',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Indication' : null,
    ),
  );


  Widget buildCurrentMedicineList2Brand() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList2Brand,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Agumentin",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Brand Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList2SuspectedDrug() => SwitchListTile(
      inactiveTrackColor: Colors.red,
      activeColor: Colors.green,
      value: isDrugsuspected2,
      title:const Text("Drug Suspected to Cause Adverse Reaction?",
        style: TextStyle(color: Colors.white,fontSize: 16),),
  onChanged: (value) {setState(() {
  isDrugsuspected2 = value;
  });});

  Widget buildCurrentMedicineList2Gen() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList2Gen,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Amoxiclav",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Generic Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList2Manufacturer() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList2Manufacturer,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. GlaxoSmithKline Limited",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Manufacturer',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList2Batch() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerCurrentMedicineList2Batch,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. CB2372828",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Batch/Lot No',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList2Dose() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerCurrentMedicineList2Dose,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. 657mg",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Dose',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList2Route() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Administration Route',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: routeAdministrationitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedRouteAdminidtrationItem = item),),
    ),
  );
  Widget buildCurrentMedicineList2Frequency() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(

        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Dose Frequency',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: doseFrequencyitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedDoseFrequencyItem = item),),
    ),
  );
  Widget buildCurrentMedicineList2RxStartDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerCurrentMedicineList2RxStartDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment Start Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildCurrentMedicineList2RxEndDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerCurrentMedicineList2RxEndDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment End Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildCurrentMedicineList2Indication() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerCurrentMedicineList2Indication,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Cellulitis in the 1st Trimester",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Indication',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );


  Widget buildCurrentMedicineList3Brand() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerCurrentMedicineList3Brand,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Agumentin",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Brand Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList3SuspectedDrug() => SwitchListTile(
      inactiveTrackColor: Colors.red,
      activeColor: Colors.green,
      value: isDrugsuspected3,
      title:const Text("Drug Suspected to Cause Adverse Reaction?",
        style: TextStyle(color: Colors.white,fontSize: 16),),
      onChanged: (value) {setState(() {
        isDrugsuspected3 = value;
      });});

  Widget buildCurrentMedicineList3Gen() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerCurrentMedicineList3Gen,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Amoxiclav",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Generic Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList3Manufacturer() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList3Manufacturer,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. GlaxoSmithKline Limited",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Manufacturer',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList3Batch() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerCurrentMedicineList3Batch,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. CB2372828",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Batch/Lot No',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList3Dose() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerCurrentMedicineList3Dose,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. 657mg",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Dose',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList3Route() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Administration Route',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: routeAdministrationitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedRouteAdminidtrationItem = item),),
    ),
  );
  Widget buildCurrentMedicineList3Frequency() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Dose Frequency',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: doseFrequencyitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedDoseFrequencyItem = item),),
    ),
  );
  Widget buildCurrentMedicineList3RxStartDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerCurrentMedicineList3RxStartDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment Start Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildCurrentMedicineList3RxEndDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerCurrentMedicineList3RxEndDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment End Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildCurrentMedicineList3Indication() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList3Indication,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Cellulitis in the 1st Trimester",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Indication',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );


  Widget buildCurrentMedicineList4Brand() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList4Brand,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Agumentin",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Brand Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList4SuspectedDrug() => SwitchListTile(
      inactiveTrackColor: Colors.red,
      activeColor: Colors.green,
      value: isDrugsuspected4,
      title:const Text("Drug Suspected to Cause Adverse Reaction?",
        style: TextStyle(color: Colors.white,fontSize: 16),),
      onChanged: (value) {setState(() {
        isDrugsuspected4 = value;
      });});
  Widget buildCurrentMedicineList4Gen() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList4Gen,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Amoxiclav",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Generic Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList4Manufacturer() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList4Manufacturer,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. GlaxoSmithKline Limited",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Manufacturer',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList4Batch() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList4Batch,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. CB2372828",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Batch/Lot No',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList4Dose() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList4Dose,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. 657mg",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Dose',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList4Route() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Administration Route',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: routeAdministrationitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedRouteAdminidtrationItem = item),),
    ),
  );
  Widget buildCurrentMedicineList4Frequency() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Dose Frequency',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: doseFrequencyitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedDoseFrequencyItem = item),),
    ),
  );
  Widget buildCurrentMedicineList4RxStartDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerCurrentMedicineList4RxStartDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment Start Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildCurrentMedicineList4RxEndDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerCurrentMedicineList4RxEndDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment End Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildCurrentMedicineList4Indication() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList4Indication,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Cellulitis in the 1st Trimester",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Indication',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );


  Widget buildCurrentMedicineList5Brand() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList5Brand,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Agumentin",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Brand Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList5SuspectedDrug() => SwitchListTile(
      inactiveTrackColor: Colors.red,
      activeColor: Colors.green,
      value: isDrugsuspected5,
      title:const Text("Drug Suspected to Cause Adverse Reaction?",
        style: TextStyle(color: Colors.white,fontSize: 16),),
      onChanged: (value) {setState(() {
        isDrugsuspected5 = value;
      });});
  Widget buildCurrentMedicineList5Gen() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList5Gen,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Amoxiclav",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Generic Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList5Manufacturer() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList5Manufacturer,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. GlaxoSmithKline Limited",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Manufacturer',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList5Batch() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList5Batch,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. CB2372828",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Batch/Lot No',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList5Dose() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList5Dose,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. 657mg",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Dose',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildCurrentMedicineList5Route() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Administration Route',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: routeAdministrationitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedRouteAdminidtrationItem = item),),
    ),
  );
  Widget buildCurrentMedicineList5Frequency() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Dose Frequency',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: doseFrequencyitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedDoseFrequencyItem = item),),
    ),
  );
  Widget buildCurrentMedicineList5RxStartDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerCurrentMedicineList5RxStartDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment Start Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildCurrentMedicineList5RxEndDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerCurrentMedicineList5RxEndDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment End Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildCurrentMedicineList5Indication() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerCurrentMedicineList5Indication,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Cellulitis in the 1st Trimester",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Indication',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );


  Widget buildPastMedicineList1Brand() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerPastMedicineList1Brand,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Agumentin",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Brand Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList1Gen() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerPastMedicineList1Gen,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Amoxiclav",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Generic Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList1Manufacturer() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerPastMedicineList1Manufacturer,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. GlaxoSmithKline Limited",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Manufacturer',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList1Batch() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList1Batch,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. CB2372828",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Batch/Lot No',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList1Dose() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList1Dose,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. 657mg",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Dose',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList1Route() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Administration Route',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: routeAdministrationitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedRouteAdminidtrationItem = item),),
    ),
  );
  Widget buildPastMedicineList1Frequency() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Dose Frequency',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: doseFrequencyitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedDoseFrequencyItem = item),),
    ),
  );
  Widget buildPastMedicineList1RxStartDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerPastMedicineList1RxStartDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment Start Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildPastMedicineList1RxEndDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerPastMedicineList1RxEndDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment End Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildPastMedicineList1Indication() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerPastMedicineList1Indication,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Cellulitis in the 1st Trimester",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Indication',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );

  Widget buildPastMedicineList2Brand() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerPastMedicineList2Brand,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Agumentin",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Brand Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList2Gen() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList2Gen,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Amoxiclav",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Generic Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList2Manufacturer() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList2Manufacturer,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. GlaxoSmithKline Limited",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Manufacturer',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList2Batch() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList2Batch,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. CB2372828",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Batch/Lot No',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList2Dose() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList2Dose,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. 657mg",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Dose',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList2Route() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Administration Route',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: routeAdministrationitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedRouteAdminidtrationItem = item),),
    ),
  );
  Widget buildPastMedicineList2Frequency() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Dose Frequency',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: doseFrequencyitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedDoseFrequencyItem = item),),
    ),
  );
  Widget buildPastMedicineList2RxStartDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerPastMedicineList2RxStartDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment Start Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildPastMedicineList2RxEndDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerPastMedicineList2RxEndDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment End Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildPastMedicineList2Indication() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList2Indication,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Cellulitis in the 1st Trimester",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Indication',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );

  Widget buildPastMedicineList3Brand() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList3Brand,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Agumentin",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Brand Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList3Gen() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerPastMedicineList3Gen,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Amoxiclav",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Generic Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList3Manufacturer() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList3Manufacturer,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. GlaxoSmithKline Limited",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Manufacturer',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList3Batch() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList3Batch,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. CB2372828",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Batch/Lot No',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList3Dose() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
      controller: controllerPastMedicineList3Dose,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. 657mg",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Dose',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList3Route() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Administration Route',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: routeAdministrationitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedRouteAdminidtrationItem = item),),
    ),
  );
  Widget buildPastMedicineList3Frequency() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Dose Frequency',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: doseFrequencyitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedDoseFrequencyItem = item),),
    ),
  );
  Widget buildPastMedicineList3RxStartDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerPastMedicineList3RxStartDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment Start Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildPastMedicineList3RxEndDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerPastMedicineList3RxEndDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment End Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildPastMedicineList3Indication() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList3Indication,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Cellulitis in the 1st Trimester",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Indication',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );

  Widget buildPastMedicineList4Brand() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList4Brand,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Agumentin",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Brand Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList4Gen() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList4Gen,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Amoxiclav",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Generic Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList4Manufacturer() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList4Manufacturer,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. GlaxoSmithKline Limited",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Manufacturer',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList4Batch() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList4Batch,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. CB2372828",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Batch/Lot No',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList4Dose() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList4Dose,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. 657mg",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Dose',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList4Route() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Administration Route',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: routeAdministrationitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedRouteAdminidtrationItem = item),),
    ),
  );
  Widget buildPastMedicineList4Frequency() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Dose Frequency',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: doseFrequencyitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedDoseFrequencyItem = item),),
    ),
  );
  Widget buildPastMedicineList4RxStartDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerPastMedicineList4RxStartDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment Start Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildPastMedicineList4RxEndDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerPastMedicineList4RxEndDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment End Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildPastMedicineList4Indication() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList4Indication,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Cellulitis in the 1st Trimester",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Indication',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );

  Widget buildPastMedicineList5Brand() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList5Brand,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Agumentin",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Brand Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList5Gen() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList5Gen,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Amoxiclav",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Generic Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList5Manufacturer() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList5Manufacturer,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. GlaxoSmithKline Limited",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Manufacturer',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList5Batch() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList5Batch,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. CB2372828",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Batch/Lot No',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList5Dose() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList5Dose,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. 657mg",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Dose',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildPastMedicineList5Route() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Administration Route',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: routeAdministrationitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedRouteAdminidtrationItem = item),),
    ),
  );
  Widget buildPastMedicineList5Frequency() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Dose Frequency',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: doseFrequencyitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedDoseFrequencyItem = item),),
    ),
  );
  Widget buildPastMedicineList5RxStartDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerPastMedicineList5RxStartDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment Start Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildPastMedicineList5RxEndDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerPastMedicineList5RxEndDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Treatment End Date',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
    ),
  );
  Widget buildPastMedicineList5Indication() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(
        controller: controllerPastMedicineList5Indication,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g. Cellulitis in the 1st Trimester",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Indication',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );

  Widget buildAdrsHaltResolution() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'ADR resolved after drug halt/reduced dose?',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select drug halt/reduced dose option' : null,
        items: adrsHaltResolutionitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedAdrsHaltResolutionItem = item),),
    ),
  );
  Widget buildAdrsResumeResolution() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'ADR reappeared after drug reintroduced?',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select reintroduction option' : null,
        items: adrsResumeResolutionitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedAdrsResumeResolutionItem = item),),
    ),
  );
  Widget buildLabInvestigationReport() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(keyboardType: TextInputType.multiline,
      maxLines: 10,
      minLines: 2,
        controller: controllerLabInvestigationReport,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: 'Lab Reports. e.g. Blood pressure:120/70mmHg; Blood glucose:11mmol/litre (3.5–10); Calcium:2.4mmol/litre (2.2–2.6); Urea:7.4mmol/litre (2.5–6.5); Bilirubin:10micromol/litre (5–17)...etc',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Lab Investigations and Results',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),
    ),
  );
  Widget buildReactionSeverity() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Reaction/Event Severity',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select Reaction/Event Severity' : null,
        items: reactionSeverityitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedReactionSeverityItem = item),),
    ),
  );
  Widget buildReactionSeriousness() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Is the reaction Serious?',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select Reaction Seriousness' : null,
        items: reactionSeriousnessitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedReactionSeriousnessItem = item),),
    ),
  );
  Widget buildSeriousnessCriteria() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Criteria/Reason for Seriousness?',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select Criteria/Reason for Seriousness' : null,
        items: seriousnessCriteriaitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedSeriousnessCriteriaItem = item),),
    ),
  );
  Widget buildActionTaken() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Action Taken?',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select Action Taken' : null,
        items: actionTakenitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedActionTakenItem = item),),
    ),
  );
  Widget buildOutcome() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          hintText: 'SELECT ONE OPTION',
          hintStyle: const TextStyle(color: Colors.white60),
          labelText: 'Outcome?',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        validator: (value) =>
        value != null && value.isEmpty ? 'Select Outcome' : null,
        items: outcomeitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedOutcomeItem = item),),
    ),
  );
  Widget buildOtherComment() => Padding(
    padding: const EdgeInsets.all(8.0),
    child:
    TextFormField(keyboardType: TextInputType.multiline,
      maxLines: 10,
      minLines: 2,
      controller: controllerOtherComment,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "e.g 'X-ray of the abdomen shows no evidence of gallstones or pancreatic calcification. Abdominal ultrasound shows no evidence of pancreatic necrosis or dilatation of intrahepatic ducts.A diagnosis of acute pancreatitis is made but causality is not known.The patient is nil by mouth and placed on supportive therapy including parenteral analgesia, intravenous fluids, and intravenous insulin.'",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Any Other Comment',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: false,
      ),

    ),
  );


  Widget buildReporterFirstName() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerReporterFirstName,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: 'e.g. John',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'First Name',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,

      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter First Name' : null,
    ),
  );
  Widget buildReporterOtherNames() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscured,
      // focusNode: textFieldFocusNode,
      controller: controllerReporterOtherNames,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: 'e.g. Smith Oliver',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Other Names',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
        prefixIcon: const Icon(Icons.lock_rounded, size: 24),
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
          child: GestureDetector(
            onTap: _toggleObscured,
            child: Icon(
              _obscured
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              size: 24,
            ),
          ),
        ),
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Other Names' : null,
    ),
  );
  Widget buildReporterCadre() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      controller: controllerReporterCadre,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: 'e.g. Pharmaceutical Technologist',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Cadre/Designation',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Cadre/Designation' : null,
    ),
  );
  Widget buildReporterContact() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscured,
      // focusNode: textFieldFocusNode,
      controller: controllerReporterContact,
      style: const TextStyle(color: Colors.white),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        hintText: 'e.g. 254708206492',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Reporter Contact',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
        prefixIcon: const Icon(Icons.lock_rounded, size: 24),
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
          child: GestureDetector(
            onTap: _toggleObscured,
            child: Icon(
              _obscured
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              size: 24,
            ),
          ),
        ),
      ),
      validator: (value) =>
      value != null && value.isEmpty ? 'Enter Reporter Contact' : null,
    ),
  );
  Widget buildReporterEmail() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscured,
      // focusNode: textFieldFocusNode,
      controller: controllerReporterEmail,
      style: const TextStyle(color: Colors.white),

      decoration: InputDecoration(
        hintText: 'e.g. johnsmith@gmail.com',
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Reporter Email',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
        prefixIcon: const Icon(Icons.lock_rounded, size: 24),
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
          child: GestureDetector(
            onTap: _toggleObscured,
            child: Icon(
              _obscured
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              size: 24,
            ),
          ),
        ),
      ),
      validator: (value) => value != null && !value.contains('@') ? 'Enter Email' : null,
    ),
  );
  Widget buildReportDate() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
        controller: controllerReportDate,
      style: const TextStyle(color: Colors.white),
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        hintText: "DD/MM/YYYY e.g. 1/12/2024",
        hintStyle: const TextStyle(color: Colors.white60),
        labelText: 'Date of Report',
        labelStyle:const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade600),
            borderRadius: BorderRadius.circular(12)
        ),
        isDense: true,
      ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Enter Date of Report' : null,
    ),
  );

Widget buildReportStatus() => Visibility(
  visible: false,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(width: double.infinity,
      child: DropdownButtonFormField<String>(
        value: selectedReportStatusItem,
        style: const TextStyle(color: Colors.white),
        dropdownColor: Colors.grey.shade800,
        decoration: InputDecoration(
          labelText: 'Report Status',
          labelStyle:const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade600),
              borderRadius: BorderRadius.circular(12)
          ),
          isDense: true,
        ),
        items: reportStatusitems.map((item) => DropdownMenuItem<String>(value: item,
          child: Text(item, style: const TextStyle(fontSize: 12,),),)).toList(),
        onChanged: (item) => setState(() => selectedReportStatusItem = item),),
    ),
  ),
);


  Widget buildSubmit() => ElevatedButton(
    onPressed: () async {
      final form = formKey.currentState;
      final isValid = form!.validate();

      if (isValid){
        final adrsReport =
          AdrsReportEntry(
            reportId: 1,
            reportTitle: controllerReportTitle.text,
            reportOn: selectedReportOnItem.toString(),
            reportType: selectedReportTypeItem.toString(),
            productCategory: selectedProductCategoryItem.toString(),
            institutionName:controllerInstitutionName.text,
            institutionContact:controllerInstitutionContact.text,
            institutionFacilityCode:controllerInstitutionFacilityCode.text,
            institutionCounty: selectedInstitutionCountyItem.toString(),
            // list of Counties drop Down Select
            patientInitials: controllerPatientName.text,
            patientIpOpNo: controllerPatientIpOpNo.text,
            dateOfBirthAge:selectedPatientAgeBracketItem.toString(),
            // Age group List Drop Drown Select
            patientAddress: controllerPatientAddress.text,
            patientWardClinic: controllerPatientWardClinic.text,
            gender: selectedPatientSexItem.toString(),
            // List Drop Down Select
            anyKnownAllergies: controllerPatientAllergies.text,
            // if yes, Specify Field. invisible/transparent..if statement?
            pregnancyStatus: selectedPregnancyStatusItem.toString(),
            // List Drop Down Select
            patientWeight: controllerPatientWeight.text,
            patientHeight: controllerPatientHeight.text,
            onsetDateOfAdrs: controllerSuspectedADRsOnset.text,
            descriptionOfAdrs:controllerAdrsDescription.text,
            medicalHistory: controllerPatientMedicalHistory.text,
            currentMedicine_1: controllerCurrentMedicineList1Gen.text,
            suspected_1: isDrugsuspected1.toString(),
            // boolian button, true or false
            drugBrand_1: controllerCurrentMedicineList1Brand.text,
            batchLotno_1:controllerCurrentMedicineList1Batch.text,
            manufacturer_1: controllerCurrentMedicineList1Manufacturer.text,
            dose_1:controllerCurrentMedicineList1Dose.text,
            route_1:selectedRouteAdminidtrationItem.toString(),
            // list of Route for selection or type
            frequency_1:selectedDoseFrequencyItem.toString(),
            rxStartDate_1:controllerCurrentMedicineList1RxStartDate.text,
            rxEndDate_1:controllerCurrentMedicineList1RxEndDate.text,
            indication_1:controllerCurrentMedicineList1Indication.text,
            currentMedicine_2:controllerCurrentMedicineList2Gen.text,
            suspected_2:isDrugsuspected2.toString(),
            // boolian button, true or false
            drugBrand_2: controllerCurrentMedicineList2Brand.text,
            batchLotno_2: controllerCurrentMedicineList2Batch.text,
            manufacturer_2:controllerCurrentMedicineList2Manufacturer.text,
            dose_2:controllerCurrentMedicineList2Dose.text,
            route_2:selectedRouteAdminidtrationItem.toString(),
            frequency_2:selectedDoseFrequencyItem.toString(),
            // list of Route for selection or type
            rxStartDate_2:controllerCurrentMedicineList2RxStartDate.text,
            rxEndDate_2: controllerCurrentMedicineList2RxEndDate.text,
            indication_2: controllerCurrentMedicineList2Indication.text,
            currentMedicine_3: controllerCurrentMedicineList3Gen.text,
            suspected_3:isDrugsuspected3.toString(),
            // boolian button, true or false
            drugBrand_3: controllerCurrentMedicineList3Brand.text,
            batchLotno_3:controllerCurrentMedicineList3Batch.text,
            manufacturer_3:controllerCurrentMedicineList3Manufacturer.text,
            dose_3:controllerCurrentMedicineList3Dose.text,
            route_3:selectedRouteAdminidtrationItem.toString(),
            frequency_3:selectedDoseFrequencyItem.toString(),
            rxStartDate_3:controllerCurrentMedicineList3RxStartDate.text,
            rxEndDate_3: controllerCurrentMedicineList3RxEndDate.text,
            indication_3:controllerCurrentMedicineList3Indication.text,
            currentMedicine_4: controllerCurrentMedicineList4Gen.text,
            suspected_4: isDrugsuspected4.toString(),
            drugBrand_4: controllerCurrentMedicineList4Brand.text,
            batchLotno_4: controllerCurrentMedicineList4Batch.text,
            manufacturer_4: controllerCurrentMedicineList4Manufacturer.text,
            dose_4: controllerCurrentMedicineList4Dose.text,
            route_4: selectedRouteAdminidtrationItem.toString(),
            frequency_4: selectedDoseFrequencyItem.toString(),
            rxStartDate_4: controllerCurrentMedicineList4RxStartDate.text,
            rxEndDate_4: controllerCurrentMedicineList4RxEndDate.text,
            indication_4: controllerCurrentMedicineList4Indication.text,
            currentMedicine_5: controllerCurrentMedicineList5Gen.text,
            suspected_5: isDrugsuspected5.toString(),
            drugBrand_5: controllerCurrentMedicineList5Brand.text,
            batchLotno_5: controllerCurrentMedicineList5Batch.text,
            manufacturer_5: controllerCurrentMedicineList5Manufacturer.text,
            dose_5: controllerCurrentMedicineList5Dose.text,
            route_5:  selectedRouteAdminidtrationItem.toString(),
            frequency_5: selectedDoseFrequencyItem.toString(),
            rxStartDate_5:controllerCurrentMedicineList5RxStartDate.text,
            rxEndDate_5:controllerCurrentMedicineList5RxEndDate.text,
            indication_5: controllerCurrentMedicineList5Indication.text,
            pastMedicineHx_1: controllerPastMedicineList1Gen.text,
            drugBrandHx_1: controllerPastMedicineList1Brand.text,
            batchLotnoHx_1: controllerPastMedicineList1Batch.text,
            manufacturerHx_1: controllerPastMedicineList1Manufacturer.text,
            doseHx_1: controllerPastMedicineList1Dose.text,
            routeHx_1: selectedRouteAdminidtrationItem.toString(),
            frequencyHx_1: selectedDoseFrequencyItem.toString(),
            rxStartDateHx_1: controllerPastMedicineList1RxStartDate.text,
            rxEndDateHx_1: controllerPastMedicineList1RxEndDate.text,
            indicationHx_1: controllerPastMedicineList1Indication.text,
            pastMedicineHx_2: controllerPastMedicineList2Gen.text,
            drugBrandHx_2: controllerPastMedicineList2Brand.text,
            batchLotnoHx_2: controllerPastMedicineList2Batch.text,
            manufacturerHx_2: controllerPastMedicineList2Manufacturer.text,
            doseHx_2: controllerPastMedicineList2Dose.text,
            routeHx_2: selectedRouteAdminidtrationItem.toString(),
            frequencyHx_2: selectedDoseFrequencyItem.toString(),
            rxStartDateHx_2: controllerPastMedicineList2RxStartDate.text,
            rxEndDateHx_2: controllerPastMedicineList3RxEndDate.text,
            indicationHx_2: controllerPastMedicineList3Indication.text,
            pastMedicineHx_3:controllerPastMedicineList3Gen.text,
            drugBrandHx_3: controllerPastMedicineList3Brand.text,
            batchLotnoHx_3: controllerPastMedicineList3Batch.text,
            manufacturerHx_3: controllerPastMedicineList3Manufacturer.text,
            doseHx_3: controllerPastMedicineList3Dose.text,
            routeHx_3: selectedRouteAdminidtrationItem.toString(),
            frequencyHx_3: selectedDoseFrequencyItem.toString(),
            rxStartDateHx_3: controllerPastMedicineList3RxStartDate.text,
            rxEndDateHx_3: controllerPastMedicineList3RxEndDate.text,
            indicationHx_3: controllerPastMedicineList3Indication.text,
            pastMedicineHx_4: controllerPastMedicineList4Gen.text,
            drugBrandHx_4: controllerPastMedicineList4Brand.text,
            batchLotnoHx_4: controllerPastMedicineList4Batch.text,
            manufacturerHx_4: controllerPastMedicineList4Manufacturer.text,
            doseHx_4: controllerPastMedicineList4Dose.text,
            routeHx_4: selectedRouteAdminidtrationItem.toString(),
            frequencyHx_4: selectedDoseFrequencyItem.toString(),
            rxStartDateHx_4: controllerPastMedicineList4RxStartDate.text,
            rxEndDateHx_4: controllerPastMedicineList4RxEndDate.text,
            indicationHx_4: controllerPastMedicineList4Indication.text,
            pastMedicineHx_5: controllerPastMedicineList5Gen.text,
            drugBrandHx_5: controllerPastMedicineList5Brand.text,
            batchLotnoHx_5: controllerPastMedicineList5Batch.text,
            manufacturerHx_5: controllerPastMedicineList5Manufacturer.text,
            doseHx_5: controllerPastMedicineList5Dose.text,
            routeHx_5: selectedRouteAdminidtrationItem.toString(),
            frequencyHx_5: selectedDoseFrequencyItem.toString(),
            rxStartDateHx_5:controllerPastMedicineList5RxStartDate.text,
            rxEndDateHx_5: controllerPastMedicineList5RxEndDate.text,
            indicationHx_5: controllerPastMedicineList5Indication.text,
            adrsHaltResolution: selectedAdrsHaltResolutionItem.toString(),
            adrsResumeResolution: selectedAdrsResumeResolutionItem.toString(),
            labInvestigationReport: controllerLabInvestigationReport.text,
            adrsGrading_1: selectedReactionSeverityItem.toString(),
            // List Drop down menu select
            adrsGrading_2: selectedReactionSeriousnessItem.toString(),
            // boolian button, true or false
            adrsGrading_3:selectedSeriousnessCriteriaItem.toString(),
            // list Drop Down for selection or type
            adrsGrading_4:selectedActionTakenItem.toString(),
            // list Drop Down for selection or type
            adrsGrading_5: selectedOutcomeItem.toString(),
            // list Drop Down for Selection or type
            otherComments: controllerOtherComment.text,
            reporterDetailsFirstName: controllerReporterFirstName.text,
            reporterDetailsOtherNames: controllerReporterOtherNames.text,
            reporterDetailsCadreDesignation:controllerReporterCadre.text,
            // List Drop Down for Selection or type
            reporterDetailsMobileNo:controllerReporterContact.text,
            reporterDetailsEmail:controllerReporterEmail.text,
            dateOfReport:controllerReportDate.text,
              adrsReportStatus: selectedReportStatusItem.toString(),);
        widget.onSavedAdrsReportEntry(adrsReport);
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('ADRs Report Successfully Submitted'),
                actions: [
                  TextButton(onPressed: () =>  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdrsReportconfirmationlist(),
                      )),
                      child: const Text('Okay'))
                ],
              );
            });
      }
    },
    style: const ButtonStyle(
      fixedSize: MaterialStatePropertyAll(Size(210, 30)),
    ),
    child: const Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.email_outlined,
            size: 20, color: Colors.black),
        Text(
          '  SUBMIT ADRs REPORT',
          style: TextStyle(
              color: Colors.black, fontSize: 12),
        ),
      ],
    ));
}




