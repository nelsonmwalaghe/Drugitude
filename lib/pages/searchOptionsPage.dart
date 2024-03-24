import 'package:drugitudeleviosa/pages/landingpage.dart';
import 'package:flutter/material.dart';

import '../searchModels/brandNameSearch.dart';
import '../searchModels/gennamesearch.dart';
import '../searchModels/pharmaceuticalgroupsearch.dart';
import '../searchModels/therapueticareasearch.dart';
import 'aboutDrugitude.dart';
import 'dictionaryMode.dart';
import 'drugrequestpage.dart';

class SearchOptions extends StatefulWidget {
  const SearchOptions({super.key});

  @override
  State<SearchOptions> createState() => _SearchOptionsState();
}

class _SearchOptionsState extends State<SearchOptions> {
  String background1 = "assets/drugitudeBi1.png";
  String background2 = "assets/drugitudeBi2.png";
  String background3 = "assets/drugitudeBi3.png";
  String background4 = "assets/drugitudeBi4.png";
  String background5 = "assets/drugitudeBi5.png";
  String background6 = "assets/drugitudeBi6.png";
  String background7 = "assets/drugitudeBi7.png";
  String background8 = "assets/drugitudeBi8.png";
  String background9 = "assets/drugitudeBi9.png";
  String background10 = "assets/drugitudeBi10.png";
  String background11 = "assets/drugitudeBi11.png";
  String background12 = "assets/drugitudeBi12.png";
  String background13 = "assets/drugitudeBi13.png";
  String background14 = "assets/drugitudeBi14.png";
  String background15 = "assets/drugitudeBi15.png";
  String background16 = "assets/drugitudeBi16.png";
  String background17 = "assets/drugitudeBi17.png";
  String background18 = "assets/drugitudeBi18.png";
  String background19 = "assets/drugitudeBi19.png";
  String background20 = "assets/drugitudeBi20.png";
  String background21 = "assets/drugitudeBi21.png";
  String background22 = "assets/drugitudeBi22.png";
  String background23 = "assets/drugitudeBi23.png";
  String background24 = "assets/drugitudeBi24.png";
  String background25 = "assets/drugitudeBi25.png";
  String background26 = "assets/drugitudeBi26.png";
  String background27 = "assets/drugitudeBi27.png";
  String background28 = "assets/drugitudeBi28.png";
  String background29 = "assets/drugitudeBi29.png";
  String background30 = "assets/drugitudeBi30.png";
  String background31 = "assets/drugitudeBi31.png";
  String background32 = "assets/drugitudeBi32.png";
  String background33 = "assets/drugitudeBi33.png";
  String background34 = "assets/drugitudeBi34.png";
  String background35 = "assets/drugitudeBi35.png";
  String background36 = "assets/drugitudeBi36.png";

  late String image;

  String imageGet() {
    var minute = DateTime.now().minute;
    var hour = DateTime.now().hour;
    if (minute < 0) {
      image = background2;
    } else if (minute < 2) {
      image = background3;
    } else if (minute < 4) {
      image = background4;
    } else if (minute < 6) {
      image = background5;
    } else if (minute < 8) {
      image = background6;
    } else if (minute < 10) {
      image = background7;
    } else if (minute < 12) {
      image = background8;
    } else if (minute < 14) {
      image = background9;
    } else if (minute < 16) {
      image = background10;
    } else if (minute < 18) {
      image = background11;
    } else if (minute < 20) {
      image = background12;
    } else if (minute < 22) {
      image = background13;
    } else if (minute < 24) {
      image = background14;
    } else if (minute < 26) {
      image = background15;
    } else if (minute < 28) {
      image = background16;
    } else if (minute < 30) {
      image = background17;
    } else if (minute < 32) {
      image = background18;
    } else if (minute < 34) {
      image = background19;
    } else if (minute < 36) {
      image = background20;
    } else if (minute < 38) {
      image = background21;
    } else if (minute < 40) {
      image = background22;
    } else if (minute < 42) {
      image = background23;
    } else if (minute < 44) {
      image = background24;
    } else if (minute < 46) {
      image = background25;
    } else if (minute < 48) {
      image = background26;
    } else if (minute < 50) {
      image = background27;
    } else if (minute < 52) {
      image = background28;
    } else if (minute < 54) {
      image = background29;
    } else if (minute < 56) {
      image = background30;
    } else if (minute < 58) {
      image = background31;
    } else if (minute < 60) {
      image = background32;
    } else if (hour < 02) {
      image = background33;
    } else if (hour < 06) {
      image = background34;
    } else if (hour < 08) {
      image = background35;
    } else if (hour < 09) {
      image = background36;
    } else {
      image = background9;
    }
    return image;
  }

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
             // child: Drawer(
            //     elevation: BorderSide.strokeAlignOutside,
            //     backgroundColor: Colors.white.withOpacity(.1),
            //     shape: const OutlineInputBorder(
            //         borderSide: BorderSide(color: Colors.black),
            //         borderRadius: BorderRadius.only(
            //           bottomRight: Radius.circular(50),
            //           topRight: Radius.circular(50),
            //         )),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(top: 50.0, bottom: 50),
            //           child: Row(
            //             children: [
            //               SizedBox(
            //                 height: 26,
            //                 width: 150,
            //                 child: ElevatedButton(
            //                     onPressed: () {
            //                       Navigator.pushReplacement(
            //                           context,
            //                           MaterialPageRoute(
            //                             builder: (context) =>
            //                                 const LandingPage(),
            //                           ));
            //                     },
            //                     child: const Row(
            //                       children: [
            //                         Icon(
            //                           Icons.home_outlined,
            //                           size: 20,
            //                           color: Colors.black,
            //                         ),
            //                         Text(
            //                           'Home',
            //                           style: TextStyle(
            //                               fontSize: 12,
            //                               fontWeight: FontWeight.bold,
            //                               color: Colors.black),
            //                         )
            //                       ],
            //                     )),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
            //           child: Row(
            //             children: [
            //               SizedBox(
            //                 height: 26,
            //                 width: 150,
            //                 child: ElevatedButton(
            //                     onPressed: () {
            //                       Navigator.push(
            //                           context,
            //                           MaterialPageRoute(
            //                             builder: (context) =>
            //                                 const SearchOptions(),
            //                           ));
            //                     },
            //                     child: const Row(
            //                       children: [
            //                         Icon(
            //                           Icons.medication_outlined,
            //                           size: 20,
            //                           color: Colors.black,
            //                         ),
            //                         Text(
            //                           'Search',
            //                           style: TextStyle(
            //                               fontSize: 12,
            //                               fontWeight: FontWeight.bold,
            //                               color: Colors.black),
            //                         )
            //                       ],
            //                     )),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
            //           child: Row(
            //             children: [
            //               SizedBox(
            //                 height: 26,
            //                 width: 150,
            //                 child: ElevatedButton(
            //                     onPressed: () {
            //                       Navigator.push(
            //                           context,
            //                           MaterialPageRoute(
            //                             builder: (context) =>
            //                                 const DrugRequestPage(),
            //                           ));
            //                     },
            //                     child: const Row(
            //                       children: [
            //                         Icon(
            //                           Icons.request_page_outlined,
            //                           size: 20,
            //                           color: Colors.black,
            //                         ),
            //                         Text(
            //                           'Request Drug',
            //                           style: TextStyle(
            //                               fontSize: 12,
            //                               fontWeight: FontWeight.bold,
            //                               color: Colors.black),
            //                         )
            //                       ],
            //                     )),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 8.0, bottom: 56.0),
            //           child: Row(
            //             children: [
            //               SizedBox(
            //                 height: 26,
            //                 width: 150,
            //                 child: ElevatedButton(
            //                     onPressed: () {
            //                       Navigator.push(
            //                           context,
            //                           MaterialPageRoute(
            //                             builder: (context) => const AboutPage(),
            //                           ));
            //                     },
            //                     child: const Row(
            //                       children: [
            //                         Icon(
            //                           Icons.perm_device_info_outlined,
            //                           size: 20,
            //                           color: Colors.black,
            //                         ),
            //                         Text(
            //                           'About',
            //                           style: TextStyle(
            //                               fontSize: 12,
            //                               fontWeight: FontWeight.bold,
            //                               color: Colors.black),
            //                         )
            //                       ],
            //                     )),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     )),
          ),
        ),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);},
              icon: const Icon(Icons.arrow_back, color: Colors.white,)),
          backgroundColor: Colors.black.withOpacity(0.8),
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
                // Row(
                //   children: [
                //     ElevatedButton(
                //         style: const ButtonStyle(
                //             backgroundColor:
                //                 MaterialStatePropertyAll(Colors.transparent)),
                //         onPressed: () {
                //           Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                 builder: (context) => const SearchOptions(),
                //               ));
                //         },
                //         child: const Row(
                //           children: [
                //             // Text('search drug', style: TextStyle(color: Colors.white),),
                //             Icon(Icons.search, color: Colors.white),
                //           ],
                //         )),
                //   ],
                // ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black.withOpacity(0.3),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  imageGet(),
                ),
                fit: BoxFit.cover,
                opacity: 0.6),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ListView(physics: const ClampingScrollPhysics(),
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Search by:',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Card(color: Colors.black.withOpacity(0.6),
                    child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () async {
                                  showSearch(
                                      context: context,
                                      delegate: SearchDrugBrandName());
                                },
                                style: const ButtonStyle(
                                  fixedSize: MaterialStatePropertyAll(Size(108, 30)),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.medication_rounded,
                                        size: 20, color: Colors.black),
                                    Text(
                                      'BRAND',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ],
                                )),
                            const Text(
                                style: TextStyle(color: Colors.white, fontSize: 11),
                                'Also known as trade name, utilized by company that manufactures it, usually the company which develops and patents it and market it with a specific brand name',
                                overflow: TextOverflow.fade,
                                textAlign: TextAlign.center)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () async {
                                  showSearch(
                                      context: context, delegate: SearchDrug());
                                },
                                style: const ButtonStyle(
                                  fixedSize: MaterialStatePropertyAll(Size(160, 30)),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.medication_outlined,
                                        size: 20, color: Colors.black),
                                    Text(
                                      'GENERIC NAME',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ],
                                )),
                            const Text(
                              style: TextStyle(color: Colors.white, fontSize: 11),
                              'Also known as International Non-Proprietary Name (INN), is the chemical name of an active ingredient. This name is the same no matter how many companies manufacture the medicine.',
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () async {
                                  showSearch(
                                      context: context,
                                      delegate: SearchDrugTherapueticArea());
                                },
                                style: const ButtonStyle(
                                  fixedSize: MaterialStatePropertyAll(Size(190, 30)),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.medical_services_rounded,
                                        size: 20, color: Colors.black),
                                    Text(
                                      'THERAPUETIC AREA',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ],
                                )),
                            const Text(
                              style: TextStyle(color: Colors.white, fontSize: 11),
                              'Refers to grouping of similar diseases or conditions under a generalised heading,',
                              overflow: TextOverflow.fade,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () async {
                                  showSearch(
                                      context: context,
                                      delegate: SearchDrugPhramGroup());
                                },
                                style: const ButtonStyle(
                                  fixedSize: MaterialStatePropertyAll(Size(220, 30)),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.medical_information_rounded,
                                        size: 20, color: Colors.black),
                                    Text(
                                      'PHARMACEUTICAL GROUP',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ],
                                )),
                            const Text(
                                style: TextStyle(color: Colors.white, fontSize: 11),
                                'Refers to a group of drugs that share a similar chemical structure, or have the same mechanism of action, the same related mode of action or target the same illness or related illnesses.',
                                overflow: TextOverflow.fade,
                                textAlign: TextAlign.center),
                          ],
                        ),
                      ),
                    ],  
                    ),
                  ),
                  const SizedBox(height:160),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
