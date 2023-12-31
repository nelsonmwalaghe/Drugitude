import 'package:drugitudeleviosa/pages/landingpage.dart';
import 'package:flutter/material.dart';

import '../searchModels/brandNameSearch.dart';
import '../searchModels/gennamesearch.dart';
import '../searchModels/pharmaceuticalgroupsearch.dart';
import '../searchModels/therapueticareasearch.dart';
import 'aboutdrugitude.dart';
import 'dictionaryMode.dart';
import 'drugrequestpage.dart';

class SearchOptions extends StatelessWidget {
  const SearchOptions({super.key});

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
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LandingPage(),
                          ));
                    }, child: Column(
                      children: [
                        const Icon(Icons.home_outlined, color: Colors.grey,),
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
                        ));}, child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.menu_book_outlined, color: Colors.black,),
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
                    }, child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.mail_outline_rounded, color: Colors.black,),
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
                    TextButton(onPressed: (){}, child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.corporate_fare_outlined, color: Colors.black,),
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
              icon: Icon(Icons.arrow_back, color: Colors.white,)),
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
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Search by:',
                  style: TextStyle(color: Colors.white38),
                ),
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
                          style: TextStyle(color: Colors.white38, fontSize: 11),
                          'Also known as trade name, utilized by company that manufactures it, usually the company which develops and patents it and market it with a specific brand name',
                          overflow: TextOverflow.fade,
                          textAlign: TextAlign.center)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
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
                        style: TextStyle(color: Colors.white38, fontSize: 11),
                        'Also known as International Non-Proprietary Name (INN), is the chemical name of an active ingredient. This name is the same no matter how many companies manufacture the medicine.',
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
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
                        style: TextStyle(color: Colors.white38, fontSize: 11),
                        'Refers to grouping of similar diseases or conditions under a generalised heading,',
                        overflow: TextOverflow.fade,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
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
                          style: TextStyle(color: Colors.white38, fontSize: 11),
                          'Refers to a group of drugs that share a similar chemical structure, or have the same mechanism of action, the same related mode of action or target the same illness or related illnesses.',
                          overflow: TextOverflow.fade,
                          textAlign: TextAlign.center),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
