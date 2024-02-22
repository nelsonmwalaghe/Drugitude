import 'package:drugitudeleviosa/adverseDrugReactionReportModel/adversedrugreaction_api.dart';
import 'package:drugitudeleviosa/pages/searchOptionsPage.dart';
import 'package:flutter/material.dart';
import 'adrsOptionsPage.dart';
import '../adverseDrugReactionReportModel/adverseDrugReactionFormWidget.dart';
import 'aboutDrugitude.dart';
import 'dictionaryMode.dart';
import 'drugrequestpage.dart';
import 'landingpage.dart';

class AdrsReportPage extends StatefulWidget {
  const AdrsReportPage({super.key});

  @override
  State<AdrsReportPage> createState() => _AdrsReportPageState();
}

class _AdrsReportPageState extends State<AdrsReportPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
        Scaffold(
          appBar: AppBar(
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
                    strokeAlign:
                    BouncingScrollSimulation.maxSpringTransferVelocity)),
            backgroundColor: Colors.black87,
            title: Padding(
              padding: const EdgeInsets.only(left: 0, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text('DRUGITUDE', style: TextStyle(color: Colors.white, fontSize: 20),),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0, right: 8.0),
                        child: CircleAvatar(
                          radius: 10,
                          child: Image(image: AssetImage('assets/drugitudeicon.png')),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [

                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                              MaterialStatePropertyAll(Colors.transparent)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SearchOptions(),
                                ));
                          },
                          child: const Row(
                            children: [
                              // Text('search drug', style: TextStyle(color: Colors.white),),
                              Icon(Icons.search, color: Colors.white),
                            ],
                          )),
                    ],
                  ),

                ],
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,elevation: 8,
            shape: const CircleBorder(side: BorderSide(color: Colors.black)),
            child: const Icon(Icons.search_outlined),
            onPressed:() async {Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchOptions(),));},
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
                      TextButton(onPressed: (){Navigator.pushReplacement(
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const DrugRequestPage(),));
                      }, child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
          drawer: Padding(
            padding: const EdgeInsets.only(top: 56.0),
            child:
            SizedBox(height: 480, width: 300,
              child:
              Drawer(
                  elevation: BorderSide.strokeAlignOutside,
                  backgroundColor: Colors.white.withOpacity(.1),
                  shape: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0, bottom: 50),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 26,
                              width: 160,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                          const DictionaryMode(),
                                        ));
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.menu_book_outlined,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        ' Dictionary Mode',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 26,
                              width: 160,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                          const SearchOptions(),
                                        ));
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.medication_outlined,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'Search',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 26,
                              width: 160,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                          const DrugRequestPage(),
                                        ));
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.mail_outline_rounded,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'Request Drug',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 56.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 26,
                              width: 160,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const AdrsReportPage(),
                                        ));
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.perm_device_info_outlined,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'About',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 56.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 26,
                              width: 160,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const AdrsOptionsPage(),
                                        ));
                                  },
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.report,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'ADRs Report',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          backgroundColor: Colors.black,
          body:
          AdrsReportFormWidget(
            onSavedAdrsReportEntry: (AdrsReportEntry) async {
              final reportId = await AdrSheetApi.getRowCount() + 1;
              final newAdrsReportEntry = AdrsReportEntry.copy(reportId: reportId);

              await AdrSheetApi.insert([newAdrsReportEntry.toJson()]);
            },),),);

  }
}