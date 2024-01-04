import 'package:drugitudeleviosa/pages/drugrequestlistconfirmation.dart';
import 'package:drugitudeleviosa/pages/landingpage.dart';
import 'package:flutter/material.dart';
import '../drug_request_model/DrugRequestForm_Widget.dart';
import '../drug_request_model/drugrequestsheets_api.dart';
import 'aboutDrugitude.dart';
import 'dictionaryMode.dart';
import 'searchOptionsPage.dart';



class DrugRequestPage extends StatefulWidget {
  const DrugRequestPage({super.key});

  @override
  State<DrugRequestPage> createState() => _DrugRequestPageState();
}

class _DrugRequestPageState extends State<DrugRequestPage> {

  String? get query => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
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
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LandingPage(),
                          ));
                    }, child: const Column(
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
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const DrugRequestPage(),));
                    }, child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail_outline_rounded, color: Colors.grey,),
                        Text('Request Drug', style: TextStyle(fontSize: 9.0, color: Colors.grey))
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
          SizedBox(height: 278, width: 150,
            child: Drawer(
                backgroundColor: Colors.black,
                shape: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )),
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0, bottom: 50),
                      child: Row(
                        children: [
                          SizedBox(height: 26, width: 150,
                            child: ElevatedButton(
                                onPressed:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingPage(),));
                                },
                                child: const Row(
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
                                child: const Row(
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
                                  Navigator.pop(context, MaterialPageRoute(builder: (context) => const LandingPage(),));
                                },
                                child: const Row(
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
                                child: const Row(
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
                )),
          ),
        ),

        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);},
              icon: const Icon(Icons.arrow_back, color: Colors.white,)),
          backgroundColor: Colors.black,
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
          actions: [
            IconButton(onPressed: () async {
              Navigator.pop(context, MaterialPageRoute(builder: (context) => const LandingPage(),));

              // final results = await showSearch(context: context, delegate: SearchDrug());

              // print('Results: $results');
            },
                icon: const Icon(Icons.close_sharp, color: Colors.white,))
          ],
        ),
        backgroundColor: Colors.black,
        body:
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 50),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Check out the current request queue',style: TextStyle(
                                  color: Colors.white, fontSize: 11) ),
                            ),
                            ElevatedButton(
                                onPressed: () async {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const DrugRequestConfirmation(),
                                      ));
                                },
                                style: const ButtonStyle(
                                  fixedSize: MaterialStatePropertyAll(Size(200, 30)),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(Icons.remove_from_queue_outlined,
                                        size: 20, color: Colors.black),
                                    Text(
                                      '  DRUG REQUEST QUEUE',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12),
                                    ),
                                  ],
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('If not in Queue, feel free to type and submit a request',style: TextStyle(
                                  color: Colors.white, fontSize: 11) ),
                            ),
                          ],
                        ),
                      ),
                      const Text('Request Drug:', style: TextStyle(color: Colors.white),),
                      DrugRequestFormWidget(onSavedDrugRequestedEntry:
                          (drugsrequestedentry) async {
                        final id = await DrugRequestSheetsApi.getRowCount() + 1;
                        final newDrugRequestEntry = drugsrequestedentry.copy(id: id);

                        await DrugRequestSheetsApi.insert([newDrugRequestEntry.toJson()]);
                      }),

                    ],
                  ),
                ),
              ),),);

  }
}