import 'package:drugitudeleviosa/pages/searchOptionsPage.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import '../apiServiceModels/gennameapimodel.dart';
import '../drugListCallModel/drugListModel.dart';
import '../searchModels/dictionarymodeazsearch.dart';
import 'aboutDrugitude.dart';
import 'drugrequestpage.dart';
import 'package:drugitudeleviosa/pages/landingpage.dart';

class DictionaryMode extends StatefulWidget {
  const DictionaryMode({super.key});

  @override
  State<DictionaryMode> createState() => _DictionaryMode();
}

class _DictionaryMode extends State<DictionaryMode> {
  final FetchDrug _drugList = FetchDrug();

  String? get query => null;

  // @override
  // void initState() {
  //   FetchDrug().getDrugList();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LandingPage(),));
                    }, child: Column(
                      children: [
                        const Icon(Icons.home_outlined, color: Colors.black,),
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
                    TextButton(onPressed: (){
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //     const DictionaryMode(),
                      //   ));
                      }, child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.menu_book_outlined, color: Colors.grey,),
                        Text('Dictionary Mode', style: TextStyle(fontSize: 9.0, color: Colors.grey))
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
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutPage(),
                          ));
                    }, child: Column(mainAxisAlignment: MainAxisAlignment.center,
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
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pop(context);},
              icon: Icon(Icons.arrow_back, color: Colors.white,)),
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
              Row(
                children: [
                  Text('A ', style: TextStyle(color: Colors.white, fontSize: 12), ),
                  Text(' - ',style: TextStyle(color: Colors.purple, fontSize: 12),),
                  Text(' Z', style: TextStyle(color: Colors.white, fontSize: 12),),
                  Text(' Generic Drug List: ',style: TextStyle(color: Colors.white, fontSize: 12),),
                ],
              ),

            ],
          ),
          actions: [
            IconButton(onPressed: () async {
              showSearch(context: context, delegate: DictionarySearch());

              // final results = await showSearch(context: context, delegate: SearchDrug());

              // print('Results: $results');
            },
                icon: const Icon(Icons.search, color: Colors.white,))
          ],
        ),
        backgroundColor: Colors.black,
        body: FutureBuilder<List<DrugList>>(
            future: _drugList.getDrugList(query),
            builder: (context, snapshot) {
              var data = snapshot.data;
              if (!snapshot.hasData) {
                return  const Center(
                  child: SpinKitCubeGrid(
                    color: Colors.white,
                    size: 70,
                  ),
                );
              }
              return ListView.builder(
                itemCount: data?.length,
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
                                    Center(
                                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 25.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Category: ${data?[index].category.name}',style: const TextStyle(color: Colors.white54, fontSize: 12),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('${data?[index].medicineName}',
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(color: Colors.white, fontSize: 70, fontWeight: FontWeight.bold)),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Active Ingredient',
                                              style: TextStyle(color: Colors.white54, fontSize: 12),),
                                          ),
                                          // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('${data?[index].innName}',
                                              textAlign: TextAlign.start,
                                              style: const TextStyle(
                                                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Active Substance: ${data?[index].activeSubstance}',
                                              overflow: TextOverflow.fade,
                                              textAlign: TextAlign.start,
                                              style: const TextStyle(color: Colors.white54, fontSize: 12),),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Therapuetic Area',
                                              style: TextStyle(color: Colors.white54,fontSize: 12),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('${data?[index].therapeuticArea}',
                                              textAlign: TextAlign.start,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Pharmacotherpuetic Group',
                                                style: TextStyle(color: Colors.white54, fontSize: 12)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('${data?[index].humanPharmacotherapeuticGroup}',
                                                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                          ),

                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Marketing Authorization Company',
                                              style: TextStyle(color: Colors.white54, fontSize: 12),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('${data?[index].marketingAuthorisationHolderorCompanyName}',
                                                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Authorization Status',
                                                style: TextStyle(color: Colors.white54, fontSize: 12)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('${data?[index].authorisationStatus.name}',
                                                style: const TextStyle(color: Colors.white, fontSize: 12)
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Indication and Use',
                                                style: TextStyle(color: Colors.white54, fontSize: 12)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('${data?[index].conditionOrIndication}',
                                              overflow: TextOverflow.fade,
                                              textAlign: TextAlign.start,
                                              style: const TextStyle(fontSize: 12,
                                                  color: Colors.white70,
                                                  fontWeight: FontWeight.bold),),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Additional information:',
                                                style: TextStyle(color: Colors.white54, fontSize: 12)
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Product Number: ${data?[index].productNumber}; ATC-Code: ${data?[index].atccode}, Generic? ${data?[index].generic.name}, Biosimilar? ${data?[index].biosimilar.name}, Conditional Approval: ${data?[index].conditionalApproval.name}, Exceptional Circumstances: ${data?[index].exceptionalCircumstances.name}, Accelerated Assessment: ${data?[index].acceleratedAssessment.name}, Orphan Medicine: ${data?[index].orphanMedicine.name}, Marketing Authorization Date: ${data?[index].marketingAuthorisationDate}, Date of Opinion: ${data?[index].dateofOpinion}, Decision Date: ${data?[index].decisionDate}, First Published: ${data?[index].firstPublished}, Revision Date: ${data?[index].revisionDate}, Revision Number: ${data?[index].revisionNumber}, url: ${data?[index].url}',
                                                overflow: TextOverflow.fade,
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(fontSize: 12,
                                                    color: Colors.white70,
                                                    fontWeight: FontWeight.bold)
                                            ),
                                          ),


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
                },
              );
            }),
      ),
    );
  }
}
