import 'package:drugitudeleviosa/pages/landingpage.dart';
import 'package:drugitudeleviosa/pages/searchOptionsPage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:url_launcher/link.dart';

import 'dictionaryMode.dart';
import 'drugrequestpage.dart';
import 'modechoice.dart';

const String SETTINGS_BOX = "settings";

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

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
    return Scaffold(floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.white,elevation: 8,
        shape: const CircleBorder(side: BorderSide(color: Colors.black)),
        onPressed: () async {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchOptions(),
              ));
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
                    Navigator.pushReplacement(
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const AboutPage(),
                    //     ));
                  }, child: const Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.corporate_fare_outlined, color: Colors.grey,),
                      Text('About', style: TextStyle(fontSize: 9.0, color: Colors.grey))
                    ],
                  )),
                ],
              ),
            ),
            const SizedBox(width: 52,)
          ],

        ),
      ),
      extendBody: false,
      drawer: const Padding(
        padding: EdgeInsets.only(top: 56.0),
        child:
        SizedBox(height: 278, width: 150,
          // child: Drawer(
          //     backgroundColor: Colors.black,
          //     shape: const OutlineInputBorder(
          //         borderSide: BorderSide(color: Colors.black),
          //         borderRadius: BorderRadius.only(
          //           bottomRight: Radius.circular(50),
          //           topRight: Radius.circular(50),
          //         )),
          //     child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Row(
          //           children: [
          //             SizedBox(height: 26, width: 150,
          //               child: ElevatedButton(
          //                   onPressed:(){
          //                     Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingPage(),));
          //                   },
          //                   child: const Row(
          //                     children: [
          //                       Icon(Icons.home_outlined, size: 20, color: Colors.black,),
          //                       Text('Home', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),)
          //                     ],
          //                   )
          //               ),
          //             ),
          //           ],
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
          //           child: Row(
          //             children: [
          //               SizedBox(height: 26, width: 150,
          //                 child: ElevatedButton(
          //                     onPressed:(){
          //                       // Navigator.pop(context, MaterialPageRoute(builder: (context) => SearchOptions(),));
          //                     },
          //                     child: const Row(
          //                       children: [
          //                         Icon(Icons.medication_outlined, size: 20, color: Colors.grey,),
          //                         Text('Search', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),)
          //                       ],
          //                     )
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(top: 8.0, bottom:50.0 ),
          //           child: Row(
          //             children: [
          //               SizedBox(height: 26, width: 150,
          //                 child: ElevatedButton(
          //                     onPressed:(){
          //                       Navigator.push(context, MaterialPageRoute(builder: (context) => const DrugRequestPage(),));
          //                     },
          //                     child: const Row(
          //                       children: [
          //                         Icon(Icons.request_page_outlined, size: 20, color: Colors.black,),
          //                         Text('Request Drug', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),)
          //                       ],
          //                     )
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(top: 8.0, bottom:0.0),
          //           child: Row(
          //             children: [
          //               SizedBox(height: 26, width: 150,
          //                 child: ElevatedButton(
          //                     onPressed:(){
          //                       // Navigator.pop(context, MaterialPageRoute(builder: (context) => LandingPage(),));
          //                     },
          //                     child: const Row(
          //                       children: [
          //                         Icon(Icons.perm_device_info_outlined, size: 20, color: Colors.grey,),
          //                         Text('About', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),)
          //                       ],
          //                     )
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     )),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);},
            icon: const Icon(Icons.arrow_back, color: Colors.white,)),
        backgroundColor: Colors.black.withOpacity(0.8),
        title: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'DRUGITUDE',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     Text('A ', style: TextStyle(color: Colors.white, fontSize: 12), ),
            //     Text(' - ',style: TextStyle(color: Colors.purple, fontSize: 12),),
            //     Text(' Z', style: TextStyle(color: Colors.white, fontSize: 12),),
            //     Text(' Generic Drug List: ',style: TextStyle(color: Colors.white, fontSize: 12),),
            //   ],
            // ),

          ],
        ),
        // actions: [
        //   IconButton(onPressed: () async {
        //     Navigator.pop(context, MaterialPageRoute(builder: (context) => const LandingPage(),));
        //
        //     // final results = await showSearch(context: context, delegate: SearchDrug());
        //
        //     // print('Results: $results');
        //   },
        //       icon: const Icon(Icons.close_sharp, color: Colors.white,))
        // ],
      ),
      backgroundColor: Colors.black.withOpacity(0.3),
      body:  Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                imageGet(),
              ),
              fit: BoxFit.cover,),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Card(color: Colors.black.withOpacity(0.7),
              child:  Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: CircleAvatar(backgroundColor: Colors.transparent,
                      radius: 160,
                        child: Image(image: AssetImage('assets/Drugitude.png')),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                    child: Text("Drugitude is an app that attempts to conceptualize the idea of a centralized list of all Human and Veterinary drugs in the World (currently non-existing), providing an easy to search platform and reliable information, easily accessed by Medical Professionals, Students & untrained users, limiting jargon; providing clear and concise drug information.",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.all(8.0),
                  //   child: Text("This concept utilizes data from European Medicines Agency's (EMA) download data, 'European public assessment reports (EPAR)' by creating an API model to prove the concept. The developer utilizes this example to illustrate the efficiency of having a centralized mechanism of obtaining all drugs within the world, with the hopes of providing an information hub to make an organized and easily accessible search platform",
                  //     textAlign: TextAlign.justify,
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 40),
                    child: Text("With a background in DataBase management, Software development, android engineering and Pharmaceutical Technology, the developer identifies a niche and provided a conceptual answer to the gap within Medical Industry, providing links among Pharmaceutical Manufacturers, Marketers, Medical Professionals, Students, Drug Users and patients, ensuring clarity and ease of access to empirical medical data sourced from viable medical information sources.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 20,),
                  ExpansionTile(collapsedIconColor: Colors.white,
                    title: Text("Additional App Options", textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.white)),
                    children: [
                      Column(
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Link(
                                target: LinkTarget.blank,
                                uri: Uri.parse('https://play.google.com/apps/internaltest/4701330612071211376'),
                                builder: (context, followLink) => ElevatedButton(
                                  onPressed: followLink,
                                  //     (){
                                  //   // // Hive.box(SETTINGS_BOX).delete('welcome_shown');
                                  //   // setState(() {
                                  //   //   Hive.box(SETTINGS_BOX).put('welcome_shown', false);
                                  //   // });
                                  //   // Navigator.push(
                                  //   //     context,
                                  //   //     MaterialPageRoute(
                                  //   //         builder: (context) =>
                                  //   //         const ModeChoice()));
                                  //
                                  // },
                                  child: const Text("Review"),),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SizedBox(width:240,
                                  child: Text('We would love to hear from you. Your rating and review enables us to improve this application to better serve and suit you.',
                                    textAlign: TextAlign.start,
                                    softWrap: true,
                                    style: TextStyle(color: Colors.white), ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: (){
                                  // Hive.box(SETTINGS_BOX).delete('welcome_shown');
                                  setState(() {
                                    Hive.box(SETTINGS_BOX).put('welcome_shown', false);
                                  });
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const ModeChoice()));

                                }, child: const Text("Reset App"),),
                              SizedBox(width: 240,
                                child: Text('This enables you to go back to original app settings, enabling app state selection. All data instances will still be preserved.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.white), ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],

                  ),
                  SizedBox(height: 50,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
