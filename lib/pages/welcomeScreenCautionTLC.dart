import 'package:drugitudeleviosa/apiServiceModels/apiDrugCodex.dart';
import 'package:drugitudeleviosa/pages/searchOptionsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:rive/rive.dart';

import '../searchModels/dictionarymodeazsearch.dart';
import 'aboutDrugitude.dart';
import 'drugrequestpage.dart';
import 'landingpage.dart';
import 'modechoice.dart';

const String SETTINGS_BOX = "settings";

class WelcomeScreenTLC extends StatefulWidget {
  const WelcomeScreenTLC({super.key});

  @override
  State<WelcomeScreenTLC> createState() => _WelcomeScreenTLCState();
}

class _WelcomeScreenTLCState extends State<WelcomeScreenTLC>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 300,
                  child: Column(
                    children: [
                      Text('DRUGITUDE IS DESIGNED TO BE USED BY MEDICAL AND ALLIED HEALTH PROFESSIONALS ONLY. ',
                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                      SizedBox(height: 10),
                      Text('IT IS NOT INTENDED FOR GENERAL PUBLIC USE.',
                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                      SizedBox(height: 10),
                      Text('PLEASE READ AND ACCEPT OUR TERMS & CONDITIONS.',
                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
            SizedBox(height: 20),
            // Flexible(flex: 1,
            //   child: SizedBox(
            //     width: 192,
            //     child: Column(
            //       children: [
            //         Expanded(
            //             child: RiveAnimation.asset(
            //                 'assets/drugiconLoading.riv')),
            //         // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
            //
            //       ],
            //     ),
            //   ),
            // ),
            ElevatedButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (context) =>
                      SingleChildScrollView(physics: const ClampingScrollPhysics(),
                        child: AlertDialog(scrollable: true,
                          title: const Text(
                              'Drug Info Source'),
                          content: Column(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets
                                    .only(
                                    top: 0.0,
                                    bottom: 2,
                                    left: 0,
                                    right: 8),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .start,
                                  children: [
                                    const Text(
                                        'Manufacturer Verified',
                                        style: TextStyle(
                                            color: Colors
                                                .black,
                                            fontWeight:
                                            FontWeight
                                                .bold,
                                            fontSize:
                                            12,
                                            decoration:
                                            TextDecoration
                                                .underline)),
                                    Padding(
                                      padding:
                                      const EdgeInsets
                                          .only(
                                          top:
                                          0.0,
                                          bottom:
                                          2,
                                          left: 5,
                                          right:
                                          0),
                                      child: CircleAvatar(
                                          radius: 5,
                                          child: Image
                                              .asset(
                                              "assets/VERIFIED.png")),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding:
                                EdgeInsets
                                    .only(
                                    top: 0.0,
                                    bottom: 10,
                                    left: 0,
                                    right: 8),
                                child: Text(
                                    "This confirms that this drug's information has been sourced from, "
                                        "confirmed and verified by Drug Manufacturer's Medical Information (MI) department. "
                                        "MI departments are responsible for providing drug information to pharmacists, health care professionals and the public about the Manufacturer's products"),
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .start,
                                children: [
                                  const Text(
                                      'Manufacturer Verified',
                                      style: TextStyle(
                                          color: Colors
                                              .black,
                                          fontWeight:
                                          FontWeight
                                              .bold,
                                          fontSize:
                                          12,
                                          decoration:
                                          TextDecoration
                                              .underline)),
                                  Padding(
                                    padding:
                                    const EdgeInsets
                                        .only(
                                        top: 0.0,
                                        bottom: 2,
                                        left: 5,
                                        right: 0),
                                    child: CircleAvatar(
                                        radius: 5,
                                        child: Image
                                            .asset(
                                            "assets/UNVERIFIED.png")),
                                  ),
                                ],
                              ),
                              const Text(
                                  "This indicates that drug information is obtained from other sources and awaiting "
                                      "additional information and verification from Manufacturer. "
                                      "Information from other sources include drug literature, which is usually used to cover the basics of the drug,"
                                      " and their resources are referenced in additional information tile."),
                              const Row(
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .start,
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets
                                        .only(
                                        top: 8,
                                        bottom: 2,
                                        left: 0,
                                        right: 5),
                                    child: Text(
                                        'Please Note',
                                        style: TextStyle(
                                            color: Colors
                                                .black,
                                            fontWeight:
                                            FontWeight
                                                .bold,
                                            fontSize:
                                            12,
                                            decoration:
                                            TextDecoration
                                                .underline)),
                                  ),
                                  Icon(
                                    Icons
                                        .security_sharp,
                                    size: 15,
                                    color:
                                    Colors.blue,
                                  ),
                                ],
                              ),
                              const Text(
                                  "Unverified information is not detailed and we strongly advice practitioner or user to utilize in practice, only drug information verified by manufacturers"),
                            ],
                          ),
                          actions: <Widget>[
                            Row(
                              children: [
                                TextButton(
                                    onPressed: () async {
                                     //  var box = Hive.box(SETTINGS_BOX);
                                     // await box.put("welcome_shown", true);
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const ModeChoice(),
                                          ));
                                    },
                                    child: const Text('Accept')),
                                TextButton(
                                    onPressed: () {
                                      SystemNavigator.pop();
                                    },
                                    child: const Text('Decline')),
                                TextButton(
                                    onPressed: () =>
                                        Navigator.pop(
                                            context,
                                            'Cancel'),
                                    child: const Text('Close')),
                              ],
                            )
                          ],
                        ),
                      ),
                ),
                child:  Text("Terms and Conditions",)
            ),
            SizedBox(height: 20),
            Flexible(flex: 3,
              child: Row(mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      // onPressed: () {
                      //   Navigator.pushReplacement(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => const AdrsOptionsPage(),
                      //       ));
                        onPressed: () async {
                          // var box = Hive.box(SETTINGS_BOX);
                          // box.put("welcome_shown", true);
                          Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ModeChoice(),
                                    ));
                      },
                      child: const Text('Accept')),
                  SizedBox(width: 50,),
                  ElevatedButton(
                      // onPressed: () {
                      //   Navigator.pushReplacement(
                      //       context,
                      //       MaterialPageRoute(
                      //         builder: (context) => const AdrsOptionsPage(),
                      //       ));
                        onPressed: () {
                          SystemNavigator.pop();
                        }
                        ,
                      child: const Text('Decline')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

