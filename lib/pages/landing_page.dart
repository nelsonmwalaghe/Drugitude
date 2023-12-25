import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../api_service_models/day_drug_api_model.dart';
import '../drugList_call_model/drug_of_the_day_input_model.dart';
import 'about_dragitude.dart';
import 'drug_request_page.dart';
import 'search_options_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final FetchDrug_DayDrug _daydrugList = FetchDrug_DayDrug();
  // var now = new DateTime.now();
  // print(new DateFormat("yyyy-MM-dd").format(now));

  String? get query => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: false,
        drawer: Padding(
          padding: const EdgeInsets.only(top: 56.0),
          child:
          SizedBox(height: 278, width: 150,
            child: Drawer(
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0, bottom: 50),
                      child: Row(
                        children: [
                          SizedBox(height: 26, width: 150,
                            child: ElevatedButton(
                                onPressed:(){
                                  // Navigator.pop(context, MaterialPageRoute(builder: (context) => LandingPage(),));
                                  },
                                child: Row(
                                  children: [
                                    Icon(Icons.home_outlined, size: 20, color: Colors.grey,),
                                    Text('Home', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),)
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
                      child: Row(
                        children: [
                          SizedBox(height: 26, width: 150,
                            child: ElevatedButton(
                                onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchOptions(),));
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.medication_outlined, size: 20, color: Colors.black,),
                                    Text('Search', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),)
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom:50.0 ),
                      child: Row(
                        children: [
                          SizedBox(height: 26, width: 150,
                            child: ElevatedButton(
                                onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => DrugRequestPage(),));
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.request_page_outlined, size: 20, color: Colors.black,),
                                    Text('Request Drug', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),)
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom:0.0),
                      child: Row(
                        children: [
                          SizedBox(height: 26, width: 150,
                            child: ElevatedButton(
                                onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage(),));
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.perm_device_info_outlined, size: 20, color: Colors.black,),
                                    Text('About', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),)
                                  ],
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                backgroundColor: Colors.black,
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ))),
          ),
        ),

        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 8,
          // shadowColor: Colors.red.withOpacity(.1),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(50),
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
                Row(
                  children: [
                    Text(
                      'DRUGITUDE',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    // Text(' - ',style: TextStyle(color: Colors.red, fontSize: 20),),
                    // Text(' Z', style: TextStyle(color: Colors.white, fontSize: 20),),
                    // Text(' List of Drugs: ',style: TextStyle(color: Colors.white, fontSize: 20),),
                    // Text(' Dictionary Mode', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.transparent)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SearchOptions(),
                          ));
                    },
                    child: Row(
                      children: [
                        // Text('search drug', style: TextStyle(color: Colors.white),),
                        Icon(Icons.search, color: Colors.white),
                      ],
                    )),

              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body:
        FutureBuilder<List<DayDrug>>(
          future: _daydrugList.getDayDrug(query),
          builder: (context, snapshot) {
            var data_DayDrug = snapshot.data;
            if (!snapshot.hasData) {
              return const Center(
                  child:SpinKitCubeGrid(
                    color: Colors.purple,
                    size: 70,
                  )
              );
            }
            return ListView.builder(
                itemCount: data_DayDrug!.length = 1,
                itemBuilder: (context, index) {
                  return Card(color: Colors.black87,
                      shape: OutlineInputBorder(
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
                                      Padding(
                                        padding: const EdgeInsets.only(top: 25.0, bottom: 0, left: 8, right: 8),
                                        child: Text('Drug of the Day',
                                    style: TextStyle(
                                        decorationThickness: BouncingScrollSimulation.maxSpringTransferVelocity,
                                        fontSize: 20, color: Colors.white38)),
                                      ),
                                      Text('${data_DayDrug[index].medicineName}',
                                        style: TextStyle(color: Colors.white, fontSize: 70, fontWeight: FontWeight.bold)),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 2.0, bottom: 0, left: 8, right: 8),
                                    child: Text('Active Ingredient',
                                      style: TextStyle(color: Colors.white54, fontSize: 12),),
                                  ),
                                      // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                    child: Text('${data_DayDrug[index].innName}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    child: Text('Therapuetic Area',
                                      style: TextStyle(color: Colors.white54,fontSize: 12),),
                                  ),
                                      Text('${data_DayDrug[index].therapeuticArea}',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    child: Text('Pharmacotherpuetic Group',
                                        style: TextStyle(color: Colors.white54, fontSize: 12)),
                                  ),
                                      Text('${data_DayDrug[index].humanPharmacotherapeuticGroup}',
                                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    child: Text('Authorization Status',
                                        style: TextStyle(color: Colors.white54, fontSize: 12)),
                                  ),
                                      Text('${data_DayDrug[index].authorisationStatus}',
                                          style: TextStyle(
                                              color: Colors.white, fontWeight: FontWeight.bold)),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                        child: Text('Marketing Authorization Company',
                                          style: TextStyle(color: Colors.white54, fontSize: 12),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                        child: Text('${data_DayDrug[index].marketingAuthorisationHolderorCompanyName}',
                                            style: TextStyle(color: Colors.white, fontSize: 12)
                                        ),
                                      ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    child: Text('Indication and Use',
                                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                                  ),
                                  Text('${data_DayDrug[index].conditionOrIndication}',
                                   overflow: TextOverflow.fade,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12,
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
