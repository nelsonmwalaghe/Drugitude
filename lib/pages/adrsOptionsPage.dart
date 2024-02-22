import 'package:flutter/material.dart';

import '../searchModels/gennamesearch.dart';
import 'aboutDrugitude.dart';
import 'adrsLandingPage.dart';
import 'adrsreportconfirmationlistpage.dart';
import 'dictionaryMode.dart';
import 'drugrequestpage.dart';
import 'landingpage.dart';


class AdrsOptionsPage extends StatefulWidget {
  const AdrsOptionsPage({super.key});

  @override
  State<AdrsOptionsPage> createState() => _AdrsOptionsPageState();
}

class _AdrsOptionsPageState extends State<AdrsOptionsPage> {
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
          leading: IconButton(onPressed: (){ Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LandingPage(),));
},
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'ADVERSE DRUG REACTIONS REPORT PORTAL',
                  style: TextStyle(color: Colors.white, decoration: TextDecoration.underline, decorationColor: Colors.white),
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
                                builder: (context) => const AdrsLandingPage(),
                              ));
                        },
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(200, 30)),
                        ),
                        child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ADRS INITIAL REPORT',
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
                                builder: (context) => const AdrsReportconfirmationlist(),
                              ));
                        },
                        style: const ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(Size(300, 30)),
                        ),
                        child: const Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'FOLLOW UP ON SUBMITTED REPORT',
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
    );
  }
}
