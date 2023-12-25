import 'package:drugitudeleviosa/pages/landing_page.dart';
import 'package:flutter/material.dart';

import '../search_models/brandName_search.dart';
import '../search_models/innName_search.dart';
import '../search_models/pharmaceutical_group_search.dart';
import '../search_models/therapuetic_area_search.dart';
import 'drug_request_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                                  // Navigator.pop(context, MaterialPageRoute(builder: (context) => LandingPage(),));
                                },
                                child: Row(
                                  children: [
                                    Icon(Icons.perm_device_info_outlined, size: 20, color: Colors.grey,),
                                    Text('About', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),)
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
                Center(child: Text('What is Dragitude?', style: TextStyle(color: Colors.white38),)),
              Row(
                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Dragitude is an app that attempts to conceptualize the idea of a centralized list of all Human and Veterinary drugs in the World (currently non-existing), providing an easy to search platform and reliable information, easily accessed by Medical Professionals, Students & untrained users, limiting jargon; providing clear and concise drug information.',
                      softWrap: true,
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
                ],
              )
              ],
            ),

          ),
        ),
      ),
    );
  }
}
