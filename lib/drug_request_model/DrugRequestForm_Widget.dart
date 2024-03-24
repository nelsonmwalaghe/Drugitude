import 'package:drugitudeleviosa/drug_request_model/drugrequestfields.dart';
import 'package:drugitudeleviosa/pages/drugrequestlistconfirmation.dart';
import 'package:flutter/material.dart';


class DrugRequestFormWidget extends StatefulWidget {
  final ValueChanged<DrugRequestedEntry> onSavedDrugRequestedEntry;
  const DrugRequestFormWidget({super.key,
  required this.onSavedDrugRequestedEntry});



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
    shouldwecontactyou = true;
  }


  @override
  Widget build(BuildContext context) => Form(
    key: formKey,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildDrugBrandName(),
        const SizedBox(height: 16),
        buildDrugGenericName(),
        const SizedBox(height: 16),
        buildEmail(),
        const SizedBox(height: 16,),
        buildShouldwecontactyou(),
        const SizedBox(height: 16,),
        buildDrugReqSubmit(),
      ],
    ),
  );

  Widget buildDrugBrandName() => TextFormField(
    controller: controllerBrandName,
    style: const TextStyle(color: Colors.white),
    decoration:
    const InputDecoration(
      labelText: 'Brand Name', labelStyle: TextStyle(color: Colors.white),
      border: OutlineInputBorder(),
    ),
    validator: (value) => value != null && value.isEmpty ? 'Enter Brand Name' : null,
  );

  Widget buildDrugGenericName() => TextFormField(
    controller: controllerGenericName,
    style: const TextStyle(color: Colors.white),
    decoration: const InputDecoration(
    labelText: 'Generic Name', labelStyle: TextStyle(color: Colors.white),
    border: OutlineInputBorder(),
  ),
    validator: (value) => value != null && value.isEmpty ? 'Enter Generic Name' : null,
  );

  Widget buildEmail() => TextFormField(
    controller: controllerEmail,
    style: const TextStyle(color: Colors.white),
    decoration: const InputDecoration(
      labelText: 'Email Address',labelStyle: TextStyle(color: Colors.white),
      border: OutlineInputBorder(),
    ),
    validator: (value) => value != null && !value.contains('@') ? 'Enter Email' : null,
  );

  Widget buildShouldwecontactyou() => SwitchListTile(

    contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      value: shouldwecontactyou,
      title: const Text('Should we contact you after drug addition?',
        style: TextStyle(color: Colors.white),),
      onChanged: (value) {setState(() {
        shouldwecontactyou = value;
      });},);

  Widget buildDrugReqSubmit() => ElevatedButton(
      onPressed: () {
        final form = formKey.currentState!;
        final isValid = form.validate();

        if(isValid){
          final drugsrequestedentry = DrugRequestedEntry(
              brandName: controllerBrandName.text,
              genericName: controllerGenericName.text,
              email: controllerEmail.text,
              shouldwecontactyou: shouldwecontactyou,
          );
          widget.onSavedDrugRequestedEntry(drugsrequestedentry);
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Request Successfully Submitted'),
                  actions: [
                    TextButton(onPressed: () =>  Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DrugRequestConfirmation(),
                        )),
                        child: const Text('Okay'))
                  ],
                );
              });
        }
      },
      style: const ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(170, 30)),),
      child: const Row(
        children: [
          Icon(Icons.mail_lock_outlined, size: 20,color: Colors.black),
          Text('SUBMIT REQUEST', style: TextStyle(color: Colors.black, fontSize: 12),),
        ],
      ));
}
