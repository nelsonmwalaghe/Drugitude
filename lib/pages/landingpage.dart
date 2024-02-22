import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../apiServiceModels/daydrugapimodel.dart';
import '../drugListCallModel/drugofthedayinputmodel.dart';
import 'aboutDrugitude.dart';
import 'adrsOptionsPage.dart';
import 'adrsReportPage.dart';
import 'dictionaryMode.dart';
import 'drugrequestpage.dart';
import 'searchOptionsPage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});


  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final FetchDrugDayDrug _daydrugList = FetchDrugDayDrug();
  // var now = new DateTime.now();
  // print(new DateFormat("yyyy-MM-dd").format(now));

  String? get query => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.white,elevation: 8,
          shape: const CircleBorder(side: BorderSide(color: Colors.black)),
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchOptions(),
                ));
          // await NotificationService.showNotification(
          //   interval: 5,
          //     title: "Drugitude",
          //     body: "Drug of the Day",
          //     summary: "Daily Dose of New Drug Information",
          //   scheduled: true,
          //   repeatNotif: true
          //   );


            // AwesomeNotifications().createNotification(content: NotificationContent(
            //     id: 1, channelKey: 'Basic Channel',
            // title: 'Drugitude',
            //   body: 'Check out the Drug of the Day',
            //     icon: 'drugitudeicon',
            // ),);
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
                    TextButton(onPressed: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //     const LandingPage(),
                      //   ));
                      }, child: const Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_filled, color: Colors.grey,),
                        Text('Home', style: TextStyle(fontSize: 9.0, color: Colors.grey))
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
                      Navigator.push(
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
            padding: const EdgeInsets.only(top: 10.0, ),
            child: SizedBox(height: 480, width: 300,
              child: Drawer(
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const AboutPage(),
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

        extendBodyBehindAppBar: true,
        appBar: AppBar(

          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 8,
          // shadowColor: Colors.red.withOpacity(.1),
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              borderSide: BorderSide(width: 2,
                  color: Colors.white,
                  strokeAlign: double.maxFinite)),
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
                      child: SizedBox(width: 20, height: 20,
                          child: Image(image: AssetImage('assets/drugitudeicon.png'))),
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
        backgroundColor: Colors.black,
        body:
        FutureBuilder<List<DayDrug>>(
          future: _daydrugList.getDayDrug(query),
          builder: (context, snapshot) {
            var dataDayDrug = snapshot.data;
            if (!snapshot.hasData) {
              return const Center(
                  child:SpinKitCubeGrid(
                    color: Colors.white,
                    size: 70,
                    duration: Duration(milliseconds: 400),
                  )
              );
            }
            return ListView.builder(
                itemCount: dataDayDrug!.length = 1,
                itemBuilder: (context, index) {
                  return Card(color: Colors.black87,borderOnForeground: false,
                      shape: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                    borderSide: BorderSide(color: Colors.transparent)
                  ),
                    child: ListTile(
                        title: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:
                                Center(
                                  child: Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(top: 25.0, bottom: 0, left: 8, right: 8),
                                        child: Text('Drug of the Day',
                                    style: TextStyle(
                                        decorationThickness: BouncingScrollSimulation.maxSpringTransferVelocity,
                                        fontSize: 20, color: Colors.white38)),
                                      ),
                                      Text(dataDayDrug[index].medicineName,
                                        style: const TextStyle(color: Colors.white, fontSize: 70, fontWeight: FontWeight.bold)),

                                  const Padding(
                                    padding: EdgeInsets.only(top: 2.0, bottom: 0, left: 8, right: 8),
                                    child: Text('Active Ingredient',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(color: Colors.white54, fontSize: 12),),
                                  ),
                                      // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                    child: Text(dataDayDrug[index].innName,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    child: Text('Therapuetic Area',
                                      style: TextStyle(color: Colors.white54,fontSize: 12),),
                                  ),
                                      Text(dataDayDrug[index].therapeuticArea,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    child: Text('Pharmacotherpuetic Group',
                                        style: TextStyle(color: Colors.white54, fontSize: 12)),
                                  ),
                                      Text(dataDayDrug[index].humanPharmacotherapeuticGroup,
                                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    child: Text('Authorization Status',
                                        style: TextStyle(color: Colors.white54, fontSize: 12)),
                                  ),
                                      Text(dataDayDrug[index].authorisationStatus,
                                          style: const TextStyle(
                                              color: Colors.white, fontWeight: FontWeight.bold)),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                        child: Text('Marketing Authorization Company',
                                          style: TextStyle(color: Colors.white54, fontSize: 12),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                        child: Text(dataDayDrug[index].marketingAuthorisationHolderorCompanyName,
                                            style: const TextStyle(color: Colors.white, fontSize: 12)
                                        ),
                                      ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    child: Text('Indication and Use',
                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                  ),
                                  Text(dataDayDrug[index].conditionOrIndication,
                                   overflow: TextOverflow.fade,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(fontSize: 12,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold),),

                                    ],
                                  ),

                                      // child: Padding(
                                      //     padding: EdgeInsets.only(top: 100.0),
                                      //     child: Center(
                                      //       child: Column(
                                      //           crossAxisAlignment: CrossAxisAlignment.center,
                                      //           children: [
                                      //             Text(
                                      //               'Drug of the day',
                                      //               style: TextStyle(
                                      //                   decorationThickness:
                                      //                       BouncingScrollSimulation
                                      //                           .maxSpringTransferVelocity,
                                      //                   fontSize: 20,
                                      //                   color: Colors.white38),
                                      //             ),
                                      //             Text('${data_DayDrug?[index].medicineName}',
                                      //                 style: TextStyle(
                                      //                     color: Colors.white,
                                      //                     fontSize: 70,
                                      //                     fontWeight: FontWeight.bold)),
                                      //             Column(
                                      //               children: [
                                      //                 Text(
                                      //                   'Active Ingredient',
                                      //                   style: TextStyle(color: Colors.white54),
                                      //                 ),
                                      //                 // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                      //               ],
                                      //             ),
                                      //             Padding(
                                      //               padding: EdgeInsets.only(bottom: 8.0),
                                      //               child: Text(
                                      //                 'Melatonin',
                                      //                 style: TextStyle(
                                      //                     color: Colors.white,
                                      //                     fontSize: 20,
                                      //                     fontWeight: FontWeight.bold),
                                      //               ),
                                      //             ),
                                      //             Text(
                                      //               'Therapuetic Area',
                                      //               style: TextStyle(color: Colors.white54),
                                      //             ),
                                      //             Text(
                                      //               'Sleep Initiation and Maintenance Disorders;  Autistic Disorder',
                                      //               style: TextStyle(
                                      //                   color: Colors.white,
                                      //                   fontWeight: FontWeight.bold),
                                      //             ),
                                      //             Padding(
                                      //               padding: EdgeInsets.only(top: 10.0),
                                      //               child: Column(
                                      //                 children: [
                                      //                   Text('Pharmacotherpuetic Group',
                                      //                       style: TextStyle(
                                      //                           color: Colors.white54)),
                                      //                   Text('Psycholeptics',
                                      //                       style: TextStyle(
                                      //                           color: Colors.white,
                                      //                           fontWeight: FontWeight.bold)),
                                      //                 ],
                                      //               ),
                                      //             ),
                                      //             Padding(
                                      //               padding: EdgeInsets.only(top: 5.0),
                                      //               child: Column(
                                      //                 children: [
                                      //                   Text('Authorization Status',
                                      //                       style: TextStyle(
                                      //                           color: Colors.white54)),
                                      //                   Text('Authorized',
                                      //                       style: TextStyle(
                                      //                           color: Colors.white,
                                      //                           fontWeight: FontWeight.bold)),
                                      //                 ],
                                      //               ),
                                      //             ),
                                      //             Padding(
                                      //               padding: EdgeInsets.only(top: 10.0),
                                      //               child: Text('Indication and Use',
                                      //                   style:
                                      //                       TextStyle(color: Colors.white54)),
                                      //             ),
                                      //             Expanded(
                                      //               child: Padding(
                                      //                 padding: EdgeInsets.only(
                                      //                     left: 8.0, right: 8.0, bottom: 1.0),
                                      //                 child: Text(
                                      //                   'Slenyto is indicated for the treatment of insomnia in children and adolescents aged 2-18 with Autism Spectrum Disorder (ASD) and / or Smith-Magenis syndrome, where sleep hygiene measures have been insufficient.',
                                      //                   overflow: TextOverflow.fade,
                                      //                   textAlign: TextAlign.center,
                                      //                   style: TextStyle(
                                      //                       color: Colors.white,
                                      //                       fontWeight: FontWeight.bold),
                                      //                 ),
                                      //               ),
                                      //             ),
                                      //           ]),
                                      //     ),
                                      //               ),
                                                    ),),
                            )
    ]
    )
    )
    );
    }
            );

    }
    ),
    )
    );

                }
          }
