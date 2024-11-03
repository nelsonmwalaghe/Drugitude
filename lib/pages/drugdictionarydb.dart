import 'package:drugitudeleviosa/controllers/local_database.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import '../controllers/fetch_apidrugcodexdb.dart';
import '../drugListCallModel/druglistdbmodel.dart';
import 'aboutDrugitude.dart';
import 'drugrequestpage.dart';
import 'landingpage.dart';
import 'offlinesearchoptions.dart';

class DictionaryDB extends StatefulWidget {
  const DictionaryDB({super.key});

  @override
  State<DictionaryDB> createState() => _DictionaryDBState();
}

class _DictionaryDBState extends State<DictionaryDB> {
  // late bool _customIcon = false;
  List<DrugListDB> latestnewdrugs = [];
  bool isLoading = true;
  // List <Map<String,dynamic>> savedTime = [];

//   get all the times pages were saved to db
//   getLastSavedTime() async {
//     var time = await LocalDatabase.getSaveTime();
//     setState(() {
//       savedTime = time;
//     });
//   }

//   READ drugs from db or fetch api
  firstPageDrugs() async {
    int count = await LocalDatabase.getDrugCodexRCount() ?? 0;
    print('No of drugs saved $count');
    // DateTime firstPageSavedTime = DateTime.parse(savedTime[0]  ["lastSavedTime"] ?? "2024-01-01");

    // print(firstPageSavedTime);

    // DateTime currentTime = DateTime.now();
    //
    // Duration difference = currentTime.difference(firstPageSavedTime);
    if (
    // difference.inDays>=90 ||
        count == 0) {
      print('fetching from api');
      var isApifetching = await DrugsCodexRApi.getLatestDrugs();
      if (isApifetching) {
        await getlocalDrugsData();
      }
    }else{
      print("Data from Local database");
      await getlocalDrugsData();
    }
    }


//   read data from local database
  getlocalDrugsData() async{
    var codex = await LocalDatabase.getAllDrugsDB();
    setState(() {
      print('getting local data');
      latestnewdrugs = codex.map((e) => DrugListDB.fromJson(e)).toList();
      isLoading = false;
    });
  }


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
  void initState() {
    // getLastSavedTime();
    firstPageDrugs();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.white,
          elevation: 8,
          shape: CircleBorder(side: BorderSide(color: Theme.of(context).colorScheme.secondary,)),
          onPressed: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OfflineSearchOptions(),
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //     const DictionaryMode(),
                      //   ));
                    }, child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.menu_book_outlined, color: Theme.of(context).colorScheme.tertiary,),
                        Text('Dictionary Mode', style: TextStyle(fontSize: 9.0, color: Theme.of(context).colorScheme.tertiary))
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
                    }, child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.mail_outline_rounded, color: Theme.of(context).colorScheme.primary,),
                        Text('Request Drug', style: TextStyle(fontSize: 9.0, color: Theme.of(context).colorScheme.primary))
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
        extendBody: true,
        appBar: AppBar(
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              borderSide: BorderSide(width: 2,
                  color: Colors.white,
                  strokeAlign: double.maxFinite)),
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LandingPage(),
                    ));
              },
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.primary,
              )),
          backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.8),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'DRUGITUDE',
                    style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 15),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '  A ',
                    style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 10),
                  ),
                  Text(
                    ' - ',
                    style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 12),
                  ),
                  Text(
                    ' Z',
                    style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 10),
                  ),
                  // Text(
                  //   ' Generic Drug List: ',
                  //   style: TextStyle(color: Colors.white, fontSize: 12),
                  // ),
                ],
              ),
            ],
          ),
          actions: [
      
            OutlinedButton(style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),
            ),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (context) =>
                    SingleChildScrollView(physics: const ClampingScrollPhysics(),
                      child: AlertDialog(scrollable: true,
                        title: const Text(
                            'Refresh Drug Codex'),
                        content: const Column(
                          children: [
                            Padding(
                              padding:
                              EdgeInsets
                                  .only(
                                  top: 0.0,
                                  bottom: 10,
                                  left: 0,
                                  right: 8),
                              child: Text(
                                  "This action requires internet connection. It entails deleting the old drug library and fetching a new one from the server. "
                                      "This takes at least 60 secs depending on internet speed and connetion. Please be patient"
                                      ),
                            ),
                          ],
                        ),
                        actions: <Widget>[
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () async {
                        await LocalDatabase.deleteAllDrugs();
                        // setState(() {
                        //   latestnewdrugs = [];
                        // });
                        setState(() {
                        isLoading = true;
                        Navigator.pop(
                            context,
                            'Cancel');
                        });
                        await firstPageDrugs();
                        },
                                  child: const Text('Proceed')),
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
              // onPressed: () async {
              //     await LocalDatabase.deleteAllDrugs();
              //     // setState(() {
              //     //   latestnewdrugs = [];
              //     // });
              //     setState(() {
              //       isLoading = true;
              //     });
              //    await firstPageDrugs();
              //   },
              child: Row(
              children: [
                Text(
                  'Refresh Drug Codex',
                  style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 12),
                ),
            Icon(
            Icons.refresh_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
        ],
            ),),
      
          ],
        ),
        extendBodyBehindAppBar: true,
          backgroundColor: Theme.of(context).colorScheme.surface,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageGet(),
                ),
                fit: BoxFit.cover,
                opacity: 0.6
            ),
          ),
          child: isLoading ?
          const Center(
                    child: SizedBox(
                      width: 192,
                      child: Column(
                        children: [
                          Expanded(
                              child: RiveAnimation.asset(
                                  'assets/drugiconLoading.riv')),
                          // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
                        ],
                      ),
                    ),) : latestnewdrugs.isEmpty?
          Center(child: Text('No new drugs found', style: TextStyle(color: Theme.of(context).colorScheme.primary),))
          :
              ListView.builder(
                  itemCount: latestnewdrugs.length,
                  itemBuilder: (context, index){
                    return ListTile(contentPadding: EdgeInsets.zero,
                        title: Row(children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(border: Border.all(color: Colors.white),
                                color:Theme.of(context).colorScheme.surface.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:
                              Center(
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 25.0,
                                              bottom: 0,
                                              left: 8,
                                              right: 2),
                                          child: Text(
                                            'Category:',
                                            style: TextStyle(
                                                color: Theme.of(context).colorScheme.primary,
                                                fontSize: 12),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 25.0,
                                              bottom: 0,
                                              left: 8,
                                              right: 8),
                                          child: Text(latestnewdrugs[index].category,
                                            style: TextStyle(
                                                color: Theme.of(context).colorScheme.primary,
                                                fontSize: 12),
                                          ),
                                        ),
                                      ],
                                    ),
      
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0.0,
                                          bottom: 0,
                                          left: 0,
                                          right: 8),
                                      child: Row(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(
                                                    top: 0.0,
                                                    bottom: 0,
                                                    left: 8,
                                                    right: 8),
                                                child: Text(
                                                    'Manufacturer Verified',
                                                    style: TextStyle(
                                                        color: Theme.of(context).colorScheme.primary,
                                                        fontSize: 12)),
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(
                                                    top: 0.0,
                                                    bottom: 0,
                                                    left: 0,
                                                    right: 0),
                                                child: CircleAvatar(
                                                    radius: 5,
                                                    child: Image.asset(
                                                        "assets/${latestnewdrugs[index].verifiedInfo}.png")),
                                              ),
                                              IconButton(
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
                                                                      Text(
                                                                          'Manufacturer Verified',
                                                                          style: TextStyle(
                                                                              color: Theme.of(context).colorScheme.primary,
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
                                                                    Text(
                                                                        'Manufacturer Verified',
                                                                        style: TextStyle(
                                                                            color: Theme.of(context).colorScheme.primary,
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
                                                                Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top: 8,
                                                                          bottom: 2,
                                                                          left: 0,
                                                                          right: 5),
                                                                      child: Text(
                                                                          'Please Note',
                                                                          style: TextStyle(
                                                                              color: Theme.of(context).colorScheme.primary,
                                                                              fontWeight:
                                                                              FontWeight
                                                                                  .bold,
                                                                              fontSize:
                                                                              12,
                                                                              decoration:
                                                                              TextDecoration
                                                                                  .underline)),
                                                                    ),
                                                                    const Icon(
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
                                                              TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          context,
                                                                          'Cancel'),
                                                                  child: const Text('Ok'))
                                                            ],
                                                          ),
                                                        ),
                                                  ),
                                                  icon: Icon(Icons.help_outline_outlined, size: 16, color: Theme.of(context).colorScheme.primary,)
                                              )
                                            ],
                                          ),
      
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                      child: Text(latestnewdrugs[index].medicineName,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 40, fontWeight: FontWeight.bold)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                      child: Text('Active Ingredient',
                                        style: TextStyle(color: Theme.of(context).colorScheme.primary,),),
                                    ),
                                    // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                      child: Text(latestnewdrugs[index].innName,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Theme.of(context).colorScheme.primary, fontSize: 20, fontWeight: FontWeight.bold),),
                                    ),
                                    Card(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.white)),
                                      color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                                      child: ExpansionTile(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.white)),
                                        backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                                        title: Text('More...',
                                          style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 12),),
                                        children: [
                                          Image.network(
                                              latestnewdrugs[index].productImageUrl,
      
                                              frameBuilder: (context, child, frame, wasSynchronouslyLoaded)
                                              {
                                                return child;
                                              },
                                              loadingBuilder: (context, child, loadingProgress) {
                                                if (loadingProgress == null)
                                                {
                                                  return child;
                                                } else {
                                                  return const Center( child:
                                                  SizedBox(width: 192, height: 192,
                                                    child: Column(
                                                      children: [
                                                        Expanded(
                                                          child: RiveAnimation.asset('assets/drugiconLoading.riv'),),
                                                        // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
                                                      ],
                                                    ),
                                                  ),);
                                                }
                                              }
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Active Substance',
                                              overflow: TextOverflow.fade,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline,),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text(latestnewdrugs[index].activeSubstance,
                                              overflow: TextOverflow.fade,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Therapuetic Area',
                                              style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text(latestnewdrugs[index].therapeuticArea,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  color: Theme.of(context).colorScheme.primary,
                                                  fontWeight: FontWeight.bold),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Pharmacotherpuetic Group',
                                                style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline,)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text(latestnewdrugs[index].humanPharmacotherapeuticGroup,
                                                style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Approx Retail Price',
                                                style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline,)),
                                          ),
                                          Text(latestnewdrugs[index].approxRetailPrice,
                                              style: TextStyle(
                                                  color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Marketing Authorization Company',
                                              style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text(latestnewdrugs[index].marketingAuthorisationHolderorCompanyName,
                                                style:  TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Authorization Status',
                                                style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline)),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text(latestnewdrugs[index].authorisationStatus,
                                                style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline, fontWeight: FontWeight.bold)
                                            ),
                                          ),
                                          ExpansionTile(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.white)),
                                            backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                                            title: Text('Indication and Use',
                                              style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                                            children: [
      
                                              Padding(
                                                padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                child: Text('Indication and Use',
                                                    style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                child: Text(latestnewdrugs[index].conditionOrIndication,
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      fontWeight: FontWeight.bold),),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                child: Text('Contraindications, Warnings & Precautions',
                                                    style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                child: Text(latestnewdrugs[index].contraindicationOrWarningsOrPrecautions,
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      fontWeight: FontWeight.bold),),
                                              ),
      
                                              Padding(
                                                padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                child: Text('Mechanism of Action',
                                                    style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                child: Text(latestnewdrugs[index].moaPhamacology,
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      fontWeight: FontWeight.bold),),
                                              ),
      
                                              Padding(
                                                padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                child: Text('Excipients List',
                                                    style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                child: Text(latestnewdrugs[index].excipientsList,
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      color: Theme.of(context).colorScheme.primary,
                                                      fontWeight: FontWeight.bold),),
                                              ),
      
      
                                              ExpansionTile(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.white)),
                                                backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                                                title: Text('Additional Information',
                                                    style: TextStyle(color: Theme.of(context).colorScheme.primary)),
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                    child: Text('Additional information:',
                                                        style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration:TextDecoration.underline)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                    child: Text('ATC-Code: ${latestnewdrugs[index].atccode}, '
                                                        "\n"
                                                        'url: ${latestnewdrugs[index].url}',
                                                        overflow: TextOverflow.fade,
                                                        textAlign: TextAlign.start,
                                                        style: TextStyle(fontSize: 12,
                                                            color: Theme.of(context).colorScheme.primary,
                                                            fontWeight: FontWeight.bold)
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('Active Substance: ${data?[index].activeSubstance}',
                                    //     overflow: TextOverflow.fade,
                                    //     textAlign: TextAlign.start,
                                    //     style: const TextStyle(color: Colors.white54, fontSize: 12),),
                                    // ),
                                    // const Padding(
                                    //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('Therapuetic Area',
                                    //     style: TextStyle(color: Colors.white54,fontSize: 12),),
                                    // ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('${data?[index].therapeuticArea}',
                                    //     textAlign: TextAlign.start,
                                    //     style: const TextStyle(
                                    //         color: Colors.white,
                                    //         fontWeight: FontWeight.bold),),
                                    // ),
                                    // const Padding(
                                    //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('Pharmacotherpuetic Group',
                                    //       style: TextStyle(color: Colors.white54, fontSize: 12)),
                                    // ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('${data?[index].humanPharmacotherapeuticGroup}',
                                    //       style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                    // ),
                                    //
                                    // const Padding(
                                    //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('Marketing Authorization Company',
                                    //     style: TextStyle(color: Colors.white54, fontSize: 12),),
                                    // ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('${data?[index].marketingAuthorisationHolderorCompanyName}',
                                    //       style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                                    //   ),
                                    // ),
                                    // const Padding(
                                    //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('Authorization Status',
                                    //       style: TextStyle(color: Colors.white54, fontSize: 12)),
                                    // ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('${data?[index].authorisationStatus}',
                                    //       style: const TextStyle(color: Colors.white, fontSize: 12)
                                    //   ),
                                    // ),
                                    // const Padding(
                                    //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('Indication and Use',
                                    //       style: TextStyle(color: Colors.white54, fontSize: 12)),
                                    // ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('${data?[index].conditionOrIndication}',
                                    //     overflow: TextOverflow.fade,
                                    //     textAlign: TextAlign.start,
                                    //     style: const TextStyle(fontSize: 12,
                                    //         color: Colors.white70,
                                    //         fontWeight: FontWeight.bold),),
                                    // ),
                                    // const Padding(
                                    //   padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('Additional information:',
                                    //       style: TextStyle(color: Colors.white54, fontSize: 12)
                                    //   ),
                                    // ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                    //   child: Text('Product Number: ${data?[index].productNumber}; ATC-Code: ${data?[index].atccode}, Generic? ${data?[index].generic}, Biosimilar? ${data?[index].biosimilar}, Conditional Approval: ${data?[index].conditionalApproval}, Exceptional Circumstances: ${data?[index].exceptionalCircumstances}, Accelerated Assessment: ${data?[index].acceleratedAssessment}, Orphan Medicine: ${data?[index].orphanMedicine}, Marketing Authorization Date: ${data?[index].marketingAuthorisationDate}, Date of Opinion: ${data?[index].dateofOpinion}, Decision Date: ${data?[index].decisionDate}, First Published: ${data?[index].firstPublished}, Revision Date: ${data?[index].revisionDate}, Revision Number: ${data?[index].revisionNumber}, url: ${data?[index].url}',
                                    //       overflow: TextOverflow.fade,
                                    //       textAlign: TextAlign.start,
                                    //       style: const TextStyle(fontSize: 12,
                                    //           color: Colors.white70,
                                    //           fontWeight: FontWeight.bold)
                                    //   ),
                                    // ),
      
      
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
                        ]));
                  }),
        )
      
      ),
    );
  }
}

