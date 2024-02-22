import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../adverseDrugReactionReportModel/adverseDRsReportConfirmationAPIModel.dart';
import '../adverseDrugReactionReportModel/adrsreportConfirmation.dart';
import 'aboutDrugitude.dart';
import 'adrsOptionsPage.dart';
import 'dictionaryMode.dart';
import 'drugrequestpage.dart';
import 'landingpage.dart';
import 'searchOptionsPage.dart';

class AdrsReportconfirmationlist extends StatefulWidget {
  const AdrsReportconfirmationlist({super.key});

  @override
  State<AdrsReportconfirmationlist> createState() => _AdrsReportconfirmationlistState();
}

class _AdrsReportconfirmationlistState extends State<AdrsReportconfirmationlist> {
  final FetchADRSList _adrsList = FetchADRSList();

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
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const DrugRequestPage(),));
                    }, child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail_outline_rounded, color: Colors.black,),
                        Text('Request Drug', style: TextStyle(
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
          ),
        ),

        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AdrsOptionsPage(),));
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
                  Text('     ADRS Report Follow Up ',style: TextStyle(color: Colors.white, fontSize: 12),),
                ],
              ),

            ],
          ),
          actions: [
            IconButton(onPressed: () async {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => const AdrsOptionsPage(),));

              // final results = await showSearch(context: context, delegate: SearchDrug());

              // print('Results: $results');
            },
                icon: const Icon(Icons.close_sharp, color: Colors.white,))
          ],
        ),
        backgroundColor: Colors.black,
        body:
        FutureBuilder<List<AdverseDRsReportConfirmationList>>(
            future: _adrsList.getADRSList(query),
              builder: (context, snapshot) {
                var dataADRSList = snapshot.data;
                if (!snapshot.hasData) {
                  return const Center(
                    child: SpinKitCubeGrid(
                      color: Colors.white,
                      size: 70,
                      duration: Duration(milliseconds: 400),
                    ),
                  );
              }
              return
              ListView.builder(
                itemCount: dataADRSList?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Row(
                          children: [
                            Expanded(
                              child: Card(color: Colors.blueGrey.shade900,margin: const EdgeInsets.all(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center,
                                  children: [
                                    ExpansionTile(
                                      collapsedIconColor: Colors.white,
                                      iconColor: Colors.green,
                                      title: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Report ID: ${dataADRSList?[index]
                                                .reportId}' ,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),),
                                      Row(
                                        children: [
                                          const Icon(Icons.calendar_month_rounded, size: 16,),
                                          Text(
                                                  '${dataADRSList?[index]
                                                      .dateOfReport} ', style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16),),
                                        ],
                                      ),
                                        ],
                                      ),

                                      children: [
                                        Column(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Report on',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    decoration: TextDecoration.underline,
                                                    decorationStyle: TextDecorationStyle.solid,
                                                    decorationColor: Colors.white,
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight
                                                        .bold),),
                                            ),
                                            Card(color: Colors.black,
                                              child: Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Text(
                                                  '${dataADRSList?[index]
                                                      .reportOn}',
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight
                                                          .bold),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),

                                        Column(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Institution Name',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  decoration: TextDecoration.underline,
                                                    decorationStyle: TextDecorationStyle.solid,
                                                    decorationColor: Colors.white,
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight
                                                        .bold),),),
                                            Card(color: Colors.black,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  '${dataADRSList?[index]
                                                      .institutionName}',
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight
                                                          .bold),),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Report County Origin',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  decoration: TextDecoration.underline,
                                                    decorationStyle: TextDecorationStyle.solid,
                                                    decorationColor: Colors.white,
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight
                                                        .bold),),),
                                            Card(color: Colors.black,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  '${dataADRSList?[index]
                                                      .institutionCounty}',
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight
                                                          .bold),),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                'Report Status',
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    decoration: TextDecoration.underline,
                                                    decorationStyle: TextDecorationStyle.solid,
                                                    decorationColor: Colors.white,
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight
                                                        .bold),),),
                                            Card(color: Colors.green,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  '${dataADRSList?[index]
                                                      .adrsReportStatus}',
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight
                                                          .bold),),
                                              ),
                                            ),
                                          ],
                                        ),


                                      ],
                                    ),
                                    // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                  ],

                                ),
                              ),
                            )
                          ]
                      )
                  );
                },
              );
            }),

      ),
    );
  }
}
