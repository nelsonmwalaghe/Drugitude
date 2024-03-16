import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import '../drug_request_model/drugrequestlist.dart';
import '../drug_request_model/drugrequestlistapimodel.dart';
import 'aboutDrugitude.dart';
import 'dictionaryMode.dart';
import 'drugrequestpage.dart';
import 'landingpage.dart';
import 'searchOptionsPage.dart';


class DrugRequestConfirmation extends StatefulWidget {
  const DrugRequestConfirmation({super.key});

  @override
  State<DrugRequestConfirmation> createState() => _DrugRequestConfirmationState();
}

class _DrugRequestConfirmationState extends State<DrugRequestConfirmation> {
  final FetchDrugRequestList _drugRequestList = FetchDrugRequestList();

  String? get query => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation
            .miniEndDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 8,
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
        bottomNavigationBar: BottomAppBar(
          height: 54.0,
          notchMargin: BorderSide.strokeAlignOutside,
          elevation: 8,
          padding: const EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 0),
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
                padding: const EdgeInsets.only(
                    left: 0.0, right: 5, bottom: 0, top: 0),
                child: Row(
                  children: [
                    TextButton(onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const DictionaryMode(),
                          ));
                    }, child: const Column(mainAxisAlignment: MainAxisAlignment
                        .center,
                      children: [
                        Icon(Icons.menu_book_outlined, color: Colors.black,),
                        Text('Dictionary Mode', style: TextStyle(
                            fontSize: 9.0, color: Colors.black))
                      ],
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 5, bottom: 0, top: 0),
                child: Row(
                  children: [
                    TextButton(onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => const DrugRequestPage(),));
                    }, child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail_outline_rounded, color: Colors.grey,),
                        Text('Request Drug', style: TextStyle(
                            fontSize: 9.0, color: Colors.grey))
                      ],
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 5, bottom: 0, top: 0),
                child: Row(
                  children: [
                    TextButton(onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutPage(),
                          ));
                    }, child: const Column(mainAxisAlignment: MainAxisAlignment
                        .center,
                      children: [
                        Icon(Icons.corporate_fare_outlined, color: Colors
                            .black,),
                        Text('About', style: TextStyle(
                            fontSize: 9.0, color: Colors.black))
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
            //         Padding(
            //           padding: const EdgeInsets.only(top: 0.0, bottom: 50),
            //           child: Row(
            //             children: [
            //               SizedBox(height: 26, width: 150,
            //                 child: ElevatedButton(
            //                     onPressed: () {
            //                       Navigator.push(context, MaterialPageRoute(
            //                         builder: (
            //                             context) => const LandingPage(),));
            //                     },
            //                     child: const Row(
            //                       children: [
            //                         Icon(Icons.home_outlined, size: 20,
            //                           color: Colors.black,),
            //                         Text('Home', style: TextStyle(fontSize: 12,
            //                             fontWeight: FontWeight.bold,
            //                             color: Colors.black),)
            //                       ],
            //                     )
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
            //           child: Row(
            //             children: [
            //               SizedBox(height: 26, width: 150,
            //                 child: ElevatedButton(
            //                     onPressed: () {
            //                       // Navigator.pop(context, MaterialPageRoute(builder: (context) => SearchOptions(),));
            //                     },
            //                     child: const Row(
            //                       children: [
            //                         Icon(Icons.medication_outlined, size: 20,
            //                           color: Colors.grey,),
            //                         Text('Search', style: TextStyle(
            //                             fontSize: 12,
            //                             fontWeight: FontWeight.bold,
            //                             color: Colors.grey),)
            //                       ],
            //                     )
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
            //           child: Row(
            //             children: [
            //               SizedBox(height: 26, width: 150,
            //                 child: ElevatedButton(
            //                     onPressed: () {
            //                       Navigator.pop(context, MaterialPageRoute(
            //                         builder: (
            //                             context) => const LandingPage(),));
            //                     },
            //                     child: const Row(
            //                       children: [
            //                         Icon(Icons.request_page_outlined, size: 20,
            //                           color: Colors.black,),
            //                         Text('Request Drug', style: TextStyle(
            //                             fontSize: 12,
            //                             fontWeight: FontWeight.bold,
            //                             color: Colors.black),)
            //                       ],
            //                     )
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.only(top: 8.0, bottom: 0.0),
            //           child: Row(
            //             children: [
            //               SizedBox(height: 26, width: 150,
            //                 child: ElevatedButton(
            //                     onPressed: () {
            //                       // Navigator.pop(context, MaterialPageRoute(builder: (context) => LandingPage(),));
            //                     },
            //                     child: const Row(
            //                       children: [
            //                         Icon(
            //                           Icons.perm_device_info_outlined, size: 20,
            //                           color: Colors.black,),
            //                         Text('About', style: TextStyle(fontSize: 12,
            //                             fontWeight: FontWeight.bold,
            //                             color: Colors.black),)
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
          leading: IconButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DrugRequestPage(),));
          },
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
                  Text('     Drug Request Queue: ',style: TextStyle(color: Colors.white, fontSize: 12),),
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
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => const DrugRequestPage(),));

              // final results = await showSearch(context: context, delegate: SearchDrug());

              // print('Results: $results');
            },
                icon: const Icon(Icons.close_sharp, color: Colors.white,))
          ],
        ),
        backgroundColor: Colors.black,
        body: FutureBuilder<List<DrugRequestList>>(
            future: _drugRequestList.getDrugRequestList(query),
            builder: (context, snapshot) {
              var datadrugrequestlist = snapshot.data;
              if (!snapshot.hasData) {
                return const Center(

                    child:
                    SizedBox(width: 192,
                      child: Column(
                        children: [
                          Expanded(child: RiveAnimation.asset('assets/drugiconLoading.riv')),
                          // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
                        ],
                      ),


                      // Padding(
                      //   padding: const EdgeInsets.only(top:200.0),
                      //   child: SizedBox(width: 192,
                      //     child: Column(
                      //       children: [
                      //         Image.asset('assets/Springrat1.apng'),
                      //         Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
                      //       ],
                      //     ),
                      //   ),
                      // )


                      // SvgPicture.asset("LoadingIcon.svg",semanticsLabel: 'Drugitude Loading Animation',
                      // // height: 192, width: 192,
                      //   )
                      // SpinKitCubeGrid(
                      //   color: Colors.white,
                      //   size: 70,
                      //   duration: Duration(milliseconds: 400),
                      // )
                    ));
              }
              else if (snapshot.hasError){
                return Center(
                  child: SizedBox(width: double.infinity,
                    child: Card(color: Colors.black,
                      child: Column(
                        children: [
                          Card(color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("Oops...",
                                        style: TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline), textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("Seems like we have stumbled upon some critical error.",
                                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("What could have possibly gone wrong?",
                                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                  ),
                                ],
                              )),
                          Expanded(child: RiveAnimation.asset('drugitudeError.riv')),
                          Card(color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("1. Network Error", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                  Text("Please check your internet connection and try again",
                                      style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                ],
                              )),
                          Card(color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("2. AIRPLANE MODE IS ON", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                  Column(
                                    children: [
                                      Text("Please turn on your connection by turning Airplane Mode off. ",
                                          style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                      Text("If you have checked all above options and still find this error, please contact our Administrator via email: drugitude@ridcoltd.co.ke",
                                          style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                    ],
                                  ),
                                  SizedBox(width: 200, height: 30,
                                    child: ElevatedButton(
                                        onPressed: (){
                                          Navigator.pop(context);;
                                        }, child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.exit_to_app_sharp, size: 30, color: Colors.green,),
                                        Text('Close', style: TextStyle(fontSize: 15, color: Colors.black))
                                      ],
                                    )),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                );
              }
              // SingleChildScrollView(
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 150),
              //     child: Column(
              //       children: [
              //         const Text('Request Drug:', style: TextStyle(color: Colors.white),),
              //         DrugRequestFormWidget(onSavedDrugRequestedEntry:
              //             (drugsrequestedentry) async {
              //           final id = await DrugRequestSheetsApi.getRowCount() + 1;
              //           final newDrugRequestEntry = drugsrequestedentry.copy(id: id);
              //
              //           await DrugRequestSheetsApi.insert([newDrugRequestEntry.toJson()]);
              //         }),
              //       ],
              //     ),
              //   ),
              // ),
              return ListView.builder(
                itemCount: datadrugrequestlist?.length,
                itemBuilder: (context, index) {
                  return Card(color: Colors.black, borderOnForeground: false,
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
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0.0,
                                              bottom: 0,
                                              left: 5,
                                              right: 1),
                                          child: Text(
                                            'No: ${datadrugrequestlist?[index]
                                                .id}, ', style: const TextStyle(
                                              color: Colors.white54,
                                              fontSize: 12),),
                                        ),
                                        // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0.0,
                                              bottom: 0,
                                              left: 5,
                                              right: 8),
                                          child: Row(
                                            children: [
                                              const Text('Brand: ',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.white54,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight
                                                        .bold),),
                                              Text(
                                                  '${datadrugrequestlist?[index]
                                                      .brandName}',
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight
                                                          .bold)),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 0.0,
                                              bottom: 0,
                                              left: 5,
                                              right: 1),
                                          child: Row(
                                            children: [
                                              const Text('Generic Name: ',
                                                overflow: TextOverflow.fade,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.white54,
                                                    fontSize: 10),),
                                              Expanded(
                                                child: Text(
                                                  '${datadrugrequestlist?[index]
                                                      .genericName}',
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12),),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],

                                    ),),
                                )
                              ]
                          )
                      )
                  );
                },
              );
            }),

      ),
    );
  }
}
