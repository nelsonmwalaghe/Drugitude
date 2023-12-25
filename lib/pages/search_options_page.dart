import 'package:drugitudeleviosa/pages/landing_page.dart';
import 'package:flutter/material.dart';

import '../search_models/brandName_search.dart';
import '../search_models/innName_search.dart';
import '../search_models/pharmaceutical_group_search.dart';
import '../search_models/therapuetic_area_search.dart';
import 'about_dragitude.dart';
import 'drug_request_page.dart';

class SearchOptions extends StatelessWidget {
  const SearchOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
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
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage(),));
                                  },
                              child: Row(
                                children: [
                                  Icon(Icons.home_outlined, size: 20, color: Colors.black,),
                                  Text('Home', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),)
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
                                  // Navigator.pop(context, MaterialPageRoute(builder: (context) => SearchOptions(),));
                                  },
                                child: Row(
                                  children: [
                                    Icon(Icons.medication_outlined, size: 20, color: Colors.grey,),
                                    Text('Search', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),)
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
          shadowColor: Colors.red.withOpacity(.1),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(50),
              ),
              borderSide: BorderSide(
                  color: Colors.white,
                  strokeAlign:
                      BouncingScrollSimulation.maxSpringTransferVelocity)),
          backgroundColor: Colors.black,
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
                    onPressed: () {Navigator.pop(context, MaterialPageRoute(builder: (context) => LandingPage(),));},
                    child: Row(
                      children: [
                        Icon(Icons.close_sharp, color: Colors.white),
                      ],
                    ))
              ],
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Search by:', style: TextStyle(color: Colors.white38),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () async {
                        showSearch(context: context, delegate: SearchDrug_BrandName());},
                          style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(108, 30)),),
                          child: Row(
                            children: [
                              Icon(Icons.medication_rounded, size: 20,color: Colors.black),
                              Text('BRAND', style: TextStyle(color: Colors.black, fontSize: 12),),
                            ],
                          )),
                      Text(style: TextStyle(color: Colors.white38, fontSize: 11),
                          'Also known as trade name, utilized by company that manufactures it, usually the company which develops and patents it and market it with a specific brand name',
                      overflow: TextOverflow.fade, textAlign: TextAlign.center
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ElevatedButton(onPressed: () async
                      { showSearch(context: context, delegate: SearchDrug());},
                          style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(160, 30)),),
                          child: Row(
                            children: [
                              Icon(Icons.medication_outlined, size: 20,color: Colors.black),
                              Text('GENERIC NAME', style: TextStyle(color: Colors.black, fontSize: 12),),
                            ],
                          )),
                      Text(style: TextStyle(color: Colors.white38, fontSize: 11),
                        'Also known as International Non-Proprietary Name (INN), is the chemical name of an active ingredient. This name is the same no matter how many companies manufacture the medicine.',
                          overflow: TextOverflow.fade, textAlign: TextAlign.center,
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
                            showSearch(context: context, delegate: SearchDrug_TherapueticArea());},
                          style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(190, 30)),),
                          child: Row(
                            children: [
                              Icon(Icons.medical_services_rounded, size: 20,color: Colors.black),
                              Text('THERAPUETIC AREA', style: TextStyle(color: Colors.black, fontSize: 12),),
                            ],
                          )),
                      Text(style: TextStyle(color: Colors.white38, fontSize: 11),
                        'Refers to grouping of similar diseases or conditions under a generalised heading,',
                          overflow: TextOverflow.fade, textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () async {
                            showSearch(context: context, delegate: SearchDrug_PhramGroup());},
                          style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(220, 30)),),
                          child: Row(
                            children: [
                              Icon(Icons.medical_information_rounded, size: 20,color: Colors.black),
                              Text('PHARMACEUTICAL GROUP', style: TextStyle(color: Colors.black, fontSize: 12),),
                            ],
                          )),
                      Text(style: TextStyle(color: Colors.white38, fontSize: 11),
                          'Refers to a group of drugs that share a similar chemical structure, or have the same mechanism of action, the same related mode of action or target the same illness or related illnesses.',
                          overflow: TextOverflow.fade, textAlign: TextAlign.center),
                      ElevatedButton(
                          onPressed: () async {
                            showSearch(context: context, delegate: SearchDrug_PhramGroup());},
                          style: ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(220, 30)),),
                          child: Row(
                            children: [
                              Icon(Icons.medical_information_rounded, size: 20,color: Colors.black),
                              Text('DAY DRUG AUTOMATION', style: TextStyle(color: Colors.black, fontSize: 12),),
                            ],
                          )),
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
