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
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.white,
          elevation: 8,
          shape: CircleBorder(side: BorderSide(color: Theme.of(context).colorScheme.secondary,)),
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchOptions(),
                ));
            // await NotificationService.showNotification(
            //   interval: 5,
            //     title: "Drugitude",
            //     body: "Drug of the Day",
            //     summary: "Daily Dose of New Drug Information",
            //   scheduled: true,
            //   repeatNotif: true
            //   );


            // AwesomeNotifications().createNotification(content: NotificationContent(
            //     id: 1, channelKey: 'Basic Channel',
            // title: 'Drugitude',
            //   body: 'Check out the Drug of the Day',
            //     icon: 'drugitudeicon',
            // ),);
          },
          child: const Icon(Icons.search_outlined, color: Colors.black),
        ),
        bottomNavigationBar: BottomAppBar(height: 54.0,
          notchMargin: BorderSide.strokeAlignOutside,elevation: 8,padding:  const EdgeInsets.only(left: 0,right: 0, bottom: 0, top: 0),
          shape: const CircularNotchedRectangle(),
          shadowColor: Theme.of(context).colorScheme.primary,
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.95),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:0.0, right:5, bottom: 0, top: 0),
                child: Row(
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const LandingPage(),
                          ));
                    }, child:  Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_filled, color: Theme.of(context).colorScheme.primary,),
                        Text('Home', style: TextStyle(fontSize: 9.0, color: Theme.of(context).colorScheme.primary))
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
                          const DictionaryMode(),
                        ));
                    }, child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.menu_book_outlined, color: Theme.of(context).colorScheme.primary,),
                        Text('Dictionary Mode', style: TextStyle(fontSize: 9.0, color: Theme.of(context).colorScheme.primary))
                      ],
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:0.0, right:5, bottom: 0, top: 0),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: (){
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) =>
                    //         const DrugRequestPage(),
                    //       ));
                    //
                },
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail_outline_rounded, color: Theme.of(context).colorScheme.tertiary,),
                        Text('Request Drug', style: TextStyle(fontSize: 9.0, color: Theme.of(context).colorScheme.tertiary))
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
                            builder: (context) => const AboutPage(),
                          ));
                    }, child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.corporate_fare_outlined, color: Theme.of(context).colorScheme.primary,),
                        Text('About', style: TextStyle(fontSize: 9.0, color: Theme.of(context).colorScheme.primary))
                      ],
                    )),
                  ],
                ),
              ),
              const SizedBox(width: 52,)
            ],
          ),
        ),
        extendBodyBehindAppBar: true,
        // drawer: Padding(
        //   padding: const EdgeInsets.only(top: 56.0),
        //   child:
        //   SizedBox(height: 278, width: 150,
        //     child: Drawer(
        //         backgroundColor: Colors.black,
        //         shape: const OutlineInputBorder(
        //             borderSide: BorderSide(color: Colors.black),
        //             borderRadius: BorderRadius.only(
        //               bottomRight: Radius.circular(50),
        //               topRight: Radius.circular(50),
        //             )),
        //         child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(top: 0.0, bottom: 50),
        //               child: Row(
        //                 children: [
        //                   SizedBox(height: 26, width: 150,
        //                     child: ElevatedButton(
        //                         onPressed:(){
        //                           Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingPage(),));
        //                         },
        //                         child: const Row(
        //                           children: [
        //                             Icon(Icons.home_outlined, size: 20, color: Colors.black,),
        //                             Text('Home', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),)
        //                           ],
        //                         )
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
        //               child: Row(
        //                 children: [
        //                   SizedBox(height: 26, width: 150,
        //                     child: ElevatedButton(
        //                         onPressed:(){
        //                           // Navigator.pop(context, MaterialPageRoute(builder: (context) => SearchOptions(),));
        //                         },
        //                         child: const Row(
        //                           children: [
        //                             Icon(Icons.medication_outlined, size: 20, color: Colors.grey,),
        //                             Text('Search', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),)
        //                           ],
        //                         )
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(top: 8.0, bottom:50.0 ),
        //               child: Row(
        //                 children: [
        //                   SizedBox(height: 26, width: 150,
        //                     child: ElevatedButton(
        //                         onPressed:(){
        //                           Navigator.pop(context, MaterialPageRoute(builder: (context) => const LandingPage(),));
        //                         },
        //                         child: const Row(
        //                           children: [
        //                             Icon(Icons.request_page_outlined, size: 20, color: Colors.black,),
        //                             Text('Request Drug', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),)
        //                           ],
        //                         )
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(top: 8.0, bottom:0.0),
        //               child: Row(
        //                 children: [
        //                   SizedBox(height: 26, width: 150,
        //                     child: ElevatedButton(
        //                         onPressed:(){
        //                           // Navigator.pop(context, MaterialPageRoute(builder: (context) => LandingPage(),));
        //                         },
        //                         child: const Row(
        //                           children: [
        //                             Icon(Icons.perm_device_info_outlined, size: 20, color: Colors.black,),
        //                             Text('About', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),)
        //                           ],
        //                         )
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ],
        //         )),
        //   ),
        // ),

        appBar: AppBar(
          shape:  const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              borderSide: BorderSide(width: 2,
                  color: Colors.white,
                  strokeAlign: double.maxFinite)),
          leading: IconButton(onPressed: (){Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LandingPage(),
              ));},
              icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.primary,)),
          backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
          title:  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'DRUGITUDE',
                    style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 20),
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
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LandingPage(),
                  ));

              // final results = await showSearch(context: context, delegate: SearchDrug());

              // print('Results: $results');
            },
                icon: Icon(Icons.close_sharp, color: Theme.of(context).colorScheme.primary,))
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Container(padding: const EdgeInsets.only(top: 60),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imageGet(),
                      ),
                      fit: BoxFit.cover,
                      opacity: 0.6),
                ),
                child: Card(
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.white)),
                  color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 50),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Check out the current request queue',style: TextStyle(
                                    color: Theme.of(context).colorScheme.primary) ),
                              ),
                              OutlinedButton(

                                  onPressed: () async {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const DrugRequestConfirmation(),
                                        ));
                                  },
                                  style: const ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(Colors.white),
                                    fixedSize: WidgetStatePropertyAll(Size(210, 30)),
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
                                    color: Theme.of(context).colorScheme.primary) ),
                              ),
                            ],
                          ),
                        ),
                        Text('Request Drug:', style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                        DrugRequestFormWidget(onSavedDrugRequestedEntry:
                            (drugsrequestedentry) async {
                          final id = await DrugRequestSheetsApi.getRowCount() + 1;
                          final newDrugRequestEntry = drugsrequestedentry.copy(id: id);

                          await DrugRequestSheetsApi.insert([newDrugRequestEntry.toJson()]);
                        }),
                        const SizedBox(height: 160,)
                      ],
                    ),
                  ),
                ),
              ),),);

  }
}
