import 'package:drugitudeleviosa/drug_request_model/drug_request_fields.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DrugRequestFormWidget extends StatefulWidget {
  final ValueChanged<DrugRequestedEntry> onSavedDrugRequestedEntry;
  const DrugRequestFormWidget({Key? key,
  required this.onSavedDrugRequestedEntry}): super(key: key);



  @override
  State<DrugRequestFormWidget> createState() => _DrugRequestFormWidgetState();
}

class _DrugRequestFormWidgetState extends State<DrugRequestFormWidget> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController controllerBrandName;
  late TextEditingController controllerGenericName;
  late TextEditingController controllerEmail;
  late bool shouldwecontactyou;

  @override
  void initState(){
    super.initState();

    initDrugRequest();
  }
  void initDrugRequest(){
    controllerBrandName = TextEditingController();
    controllerGenericName = TextEditingController();
    controllerEmail = TextEditingController();
    this.shouldwecontactyou = true;
  }


  @override
  Widget build(BuildContext context) => Form(
    key: formKey,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildDrugBrandName(),
        SizedBox(height: 16),
        buildDrugGenericName(),
        SizedBox(height: 16),
        buildEmail(),
        SizedBox(height: 16,),
        buildShouldwecontactyou(),
        SizedBox(height: 16,),
        buildDrugReqSubmit(),
      ],
    ),
  );

  Widget buildDrugBrandName() => TextFormField(
    controller: controllerBrandName,
    style: TextStyle(color: Colors.white),
    decoration:
    InputDecoration(
      labelText: 'Brand Name',
      border: OutlineInputBorder(),
    ),
    validator: (value) => value != null && value.isEmpty ? 'Enter Brand Name' : null,
  );

  Widget buildDrugGenericName() => TextFormField(
    controller: controllerGenericName,
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
    labelText: 'Generic Name',
    border: OutlineInputBorder(),
  ),
    validator: (value) => value != null && value.isEmpty ? 'Enter Generic Name' : null,
  );

  Widget buildEmail() => TextFormField(
    controller: controllerEmail,
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
      labelText: 'Email Address',
      border: OutlineInputBorder(),
    ),
    validator: (value) => value != null && !value.contains('@') ? 'Enter Email' : null,
  );

  Widget buildShouldwecontactyou() => SwitchListTile(

    contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      value: shouldwecontactyou,
      title: Text('Should we contact you after drug addition?',
        style: TextStyle(color: Colors.white),),
      onChanged: (value) {setState(() {
        shouldwecontactyou = value;
      });},);

  Widget buildDrugReqSubmit() => ElevatedButton(
      onPressed: () {
        final form = formKey.currentState!;
        final isValid = form.validate();

        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Request Successfully Submitted'),
                actions: [
                  TextButton(onPressed: () => Navigator.of(context).pop(),
                      child: Text('Okay'))
                ],
              );
            });

        if(isValid){
          final drugsrequestedentry = DrugRequestedEntry(
              brandName: controllerBrandName.text,
              genericName: controllerGenericName.text,
              email: controllerEmail.text,
              shouldwecontactyou: shouldwecontactyou,
          );
          widget.onSavedDrugRequestedEntry(drugsrequestedentry);
        }
      },
      style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(170, 30)),),
      child: Row(
        children: [
          Icon(Icons.mail_lock_outlined, size: 20,color: Colors.black),
          Text('SUBMIT REQUEST', style: TextStyle(color: Colors.black, fontSize: 12),),
        ],
      ));
}
