import 'package:flutter/material.dart';

import '../searchModels/gennamesearch.dart';
import 'aboutDrugitude.dart';
import 'adrsReportPage.dart';
import 'dictionaryMode.dart';
import 'drugrequestpage.dart';
import 'landingpage.dart';
class AdrsLandingPage extends StatefulWidget {
  const AdrsLandingPage({super.key});

  @override
  State<AdrsLandingPage> createState() => _AdrsLandingPageState();
}

class _AdrsLandingPageState extends State<AdrsLandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.white,elevation: 8,
          shape: const CircleBorder(side: BorderSide(color: Colors.black)),
          onPressed:  () async {
            showSearch(
                context: context, delegate: SearchDrug());
          },
          child: const Icon(Icons.search_outlined),
        ),
        bottomNavigationBar: BottomAppBar(height: 54.0,
          notchMargin: BorderSide.strokeAlignOutside,elevation: 8,padding: const EdgeInsets.only(left: 0,right: 0, bottom: 0, top: 0),
          shape: const CircularNotchedRectangle(),
          color: Colors.white,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:0.0, right:5, bottom: 0, top: 0),
                child: Row(
                  children: [
                    TextButton(onPressed: (){Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const LandingPage(),
                        ));}, child: const Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_filled, color: Colors.black,),
                        Text('Home', style: TextStyle(fontSize: 9.0, color: Colors.black))
                      ],
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:0.0, right:5, bottom: 0, top: 0),
                child: Row(
                  children: [
                    TextButton(onPressed: (){Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const DictionaryMode(),
                        ));}, child: const Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.menu_book_outlined, color: Colors.black,),
                        Text('Dictionary Mode', style: TextStyle(fontSize: 9.0, color: Colors.black))
                      ],
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:0.0, right:5, bottom: 0, top: 0),
                child: Row(
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const DrugRequestPage(),
                          ));
                    }, child: const Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail_outline_rounded, color: Colors.black,),
                        Text('Request Drug', style: TextStyle(fontSize: 9.0, color: Colors.black))
                      ],
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:0.0, right:5, bottom: 0, top: 0),
                child: Row(
                  children: [
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutPage(),
                          ));
                    }, child: const Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.corporate_fare_outlined, color: Colors.black,),
                        Text('About', style: TextStyle(fontSize: 9.0, color: Colors.black))
                      ],
                    )),
                  ],
                ),
              ),
              const SizedBox(width: 52,)
            ],

          ),
        ),
        extendBody: true,
        drawer: const Padding(
          padding: EdgeInsets.only(top: 56.0),
          child: SizedBox(
            height: 400,
            width: 200,
          ),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);},
              icon: const Icon(Icons.arrow_back, color: Colors.white,)),
          backgroundColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 8,
          // shadowColor: Colors.red.withOpacity(.1),
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          title: const Padding(
            padding: EdgeInsets.only(left: 0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'DRUGITUDE',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'ADVERSE DRUG REACTIONS REPORT PORTAL',
                    style: TextStyle(color: Colors.white, decoration: TextDecoration.underline, decorationColor: Colors.white),
                  ),
                ),
                const Text(
                  'Your support and contribution towards Regional Pharmacovigilance System is appreciated',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 0, left: 8, right: 8),
                  child: Text(
                    '"You need not be certain...Just be suspicious!"',
                    style: TextStyle(color: Colors.white, fontSize: 17, decoration: TextDecoration.underline, decorationColor: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Submission of a report does not constitute an admission that medical personnel or manufacturer or the product caused or contributed to the event.',
                    style: TextStyle(color: Colors.white, fontSize: 14), textAlign: TextAlign.justify,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Patient’s identity is held in strict confidence and program staff is not expected to and will not disclose reporter’s identity in response to any public request.',
                    style: TextStyle(color: Colors.white, fontSize: 14), textAlign: TextAlign.justify,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Information supplied by you will contribute to the improvement of drug safety and therapy in the East Africa Region.',
                    style: TextStyle(color: Colors.white, fontSize: 14), textAlign: TextAlign.justify,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Completed Reports will be sent to the National Pharmacy and Poisons Board of the country case is reported ',
                    style: TextStyle(color: Colors.white, fontSize: 14), textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 0, left: 8, right: 8),
                  child: Text(
                    'PLEASE NOTE!',
                    style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 0, left: 8, right: 8),
                  child: Text(
                    'ADRs reports are quite vast and detailed. Precision is expected. With this in mind, we suggest that the reporter should familiarize themselves with the information requested for in the various entry fields, gather the necessary data and proceed accordingly.',
                    style: TextStyle(color: Colors.white, fontSize: 14), textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AdrsReportPage(),
                                ));
                          },
                          style: const ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(130, 30)),
                          ),
                          child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'PROCEED',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                              Icon(Icons.navigate_next,
                                  size: 20, color: Colors.black),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
