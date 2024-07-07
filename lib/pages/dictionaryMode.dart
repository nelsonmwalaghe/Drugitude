import 'package:drugitudeleviosa/pages/searchOptionsPage.dart';

// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rive/rive.dart';
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
  late bool _customIcon = false;
  final FetchDrug _drugList = FetchDrug();

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

  // @override
  // void initState() {
  //   FetchDrug().getDrugList();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 5, bottom: 0, top: 0),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LandingPage(),
                              ));
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home_filled,
                              color: Colors.black,
                            ),
                            Text('Home',
                                style: TextStyle(
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
                    TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) =>
                          //     const DictionaryMode(),
                          //   ));
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.menu_book_outlined,
                              color: Colors.grey,
                            ),
                            Text('Dictionary Mode',
                                style: TextStyle(
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
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DrugRequestPage(),
                              ));
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mail_outline_rounded,
                              color: Colors.black,
                            ),
                            Text('Request Drug',
                                style: TextStyle(
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
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AboutPage(),
                              ));
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.corporate_fare_outlined,
                              color: Colors.black,
                            ),
                            Text('About',
                                style: TextStyle(
                                    fontSize: 9.0, color: Colors.black))
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(
                width: 52,
              )
            ],
          ),
        ),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          backgroundColor: Colors.black.withOpacity(0.8),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Text(
                    'A ',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    ' - ',
                    style: TextStyle(color: Colors.purple, fontSize: 12),
                  ),
                  Text(
                    ' Z',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    ' Generic Drug List: ',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  showSearch(context: context, delegate: DictionarySearch());

                  // final results = await showSearch(context: context, delegate: SearchDrug());

                  // print('Results: $results');
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
        ),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  imageGet(),
                ),
                fit: BoxFit.cover),
          ),
          child: FutureBuilder<List<DrugList>>(
              future: _drugList.getDrugList(query),
              builder: (context, snapshot) {
                var data = snapshot.data;
                if (!snapshot.hasData) {
                  return const Center(
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
                      ));
                } else if (snapshot.hasError) {
                  return Center(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Card(
                        color: Colors.black,
                        child: Column(
                          children: [
                            const Card(
                                color: Colors.black,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Text("Oops...",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontStyle: FontStyle.italic,
                                              decorationStyle:
                                              TextDecorationStyle.solid,
                                              decorationColor: Colors.white,
                                              decoration:
                                              TextDecoration.underline),
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Text(
                                          "Seems like we have stumbled upon some critical error.",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(2.0),
                                      child: Text(
                                          "What could have possibly gone wrong?",
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center),
                                    ),
                                  ],
                                )),
                            const Expanded(
                                child: RiveAnimation.asset(
                                    'assets/drugitudeError.riv')),
                            const Card(
                                color: Colors.black,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("1. NETWORK ERROR",
                                          style: TextStyle(
                                              color: Colors.white,
                                              decorationStyle:
                                              TextDecorationStyle.solid,
                                              decorationColor: Colors.white,
                                              decoration:
                                              TextDecoration.underline),
                                          textAlign: TextAlign.center),
                                    ),
                                    Text(
                                        "Please check your internet connection and try again",
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center),
                                  ],
                                )),
                            Card(
                                color: Colors.black,
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text("2. AIRPLANE MODE IS ON",
                                          style: TextStyle(
                                              color: Colors.white,
                                              decorationStyle:
                                              TextDecorationStyle.solid,
                                              decorationColor: Colors.white,
                                              decoration:
                                              TextDecoration.underline),
                                          textAlign: TextAlign.center),
                                    ),
                                    const Column(
                                      children: [
                                        Text(
                                            "Please turn on your connection by turning Airplane Mode off. ",
                                            style:
                                            TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center),
                                        Text(
                                            "If you have checked all above options and still find this error, please contact our Administrator via email: drugitude@ridcoltd.co.ke",
                                            style:
                                            TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 200,
                                      height: 30,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.exit_to_app_sharp,
                                                size: 30,
                                                color: Colors.green,
                                              ),
                                              Text('Close',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black))
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
                return ListView.builder(
                  itemCount: data?.length,
                  itemBuilder: (context, index) {
                    return ListTile(contentPadding: EdgeInsets.zero,
                        title: Row(children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              top: 25.0,
                                              bottom: 0,
                                              left: 8,
                                              right: 2),
                                          child: Text(
                                            'Category:',
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontSize: 12),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 25.0,
                                              bottom: 0,
                                              left: 8,
                                              right: 8),
                                          child: Text(
                                            '${data?[index].category.toString()}',
                                            style: const TextStyle(
                                                color: Colors.white,
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
                                              const Padding(
                                                padding:
                                                EdgeInsets.only(
                                                    top: 0.0,
                                                    bottom: 0,
                                                    left: 8,
                                                    right: 8),
                                                child: Text(
                                                    'Manufacturer Verified',
                                                    style: TextStyle(
                                                        color: Colors.white54,
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
                                                        "assets/${data?[index].verifiedInfo}.png")),
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
                                                  icon: const Icon(Icons.help_outline_outlined, size: 16, color: Colors.grey,)
                                              )
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),
                                    // Text('assets/${data?[index].verifiedInfo.name}.png', style: TextStyle(color: Colors.white),),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0.0,
                                          bottom: 0,
                                          left: 8,
                                          right: 8),
                                      child: Text(
                                          '${data?[index].medicineName}',
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              decoration:
                                              TextDecoration.underline,
                                              decorationColor: Colors.white,
                                              fontSize: 30,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.0,
                                          bottom: 0,
                                          left: 8,
                                          right: 8),
                                      child: Text(
                                        'Active Ingredient',
                                        style: TextStyle(
                                            color: Colors.white54,
                                            fontSize: 12),
                                      ),
                                    ),
                                    // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0.0,
                                          bottom: 0,
                                          left: 8,
                                          right: 8),
                                      child: Text(
                                        '${data?[index].inn_name}',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Card(color: Colors.black.withOpacity(0.6),
                                      child: ExpansionTile(
                                        title: const Text('More..',
                                          style: TextStyle(color: Colors.white54, fontSize: 12),),
                                        children: [
                                          Card(color: Colors.black.withOpacity(0.1),
                                            child: ExpansionTile(
                                              trailing: Icon(_customIcon ? Icons.visibility_sharp : Icons.visibility_off),
                                              title:  const Text("Drug Image",
                                                  style: TextStyle(
                                                      decorationThickness: BouncingScrollSimulation.maxSpringTransferVelocity,
                                                      fontSize: 12, color: Colors.white54)),
                                              children: [
                                                Center(
                                                    child: Image.network(
                                                        '${data?[index].productImageUrl}',

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
                                                    )
                                                ),
                                              ],
                                              onExpansionChanged: (bool expanded) {setState(() => _customIcon = expanded);},
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Active Substance',
                                              overflow: TextOverflow.fade,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(color: Colors.white54, fontSize: 12),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('${data?[index].activeSubstance}',
                                              overflow: TextOverflow.fade,
                                              textAlign: TextAlign.start,
                                              style: const TextStyle(color: Colors.white, fontSize: 12),),
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
                                            child: Text('Approx Retail Price',
                                                style: TextStyle(color: Colors.white54, fontSize: 12)),
                                          ),
                                          Text(data![index].approxRetailPrice,
                                              style: const TextStyle(
                                                  color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Marketing Authorization Company',
                                              style: TextStyle(color: Colors.white54, fontSize: 12),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text(data[index].marketingAuthorisationHolderorCompanyName,
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
                                            child: Text(data[index].authorisationStatus,
                                                style: const TextStyle(color: Colors.white, fontSize: 12)
                                            ),
                                          ),
                                          ExpansionTile(
                                            title: const Text('Indication and Use',
                                              style: TextStyle(color: Colors.white54, fontSize: 12),),
                                            children: [

                                              const Padding(
                                                padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                child: Text('Indication and Use',
                                                    style: TextStyle(color: Colors.white54, fontSize: 12)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                child: Text(data[index].conditionOrIndication,
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                child: Text('Contraindications, Warnings & Precautions',
                                                    style: TextStyle(color: Colors.white54, fontSize: 12)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                child: Text(data[index].contraindicationOrWarningsOrPrecautions,
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),),
                                              ),

                                              const Padding(
                                                padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                child: Text('Mechanism of Action',
                                                    style: TextStyle(color: Colors.white54, fontSize: 12)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                child: Text(data[index].moaPhamacology,
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),),
                                              ),

                                              const Padding(
                                                padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                child: Text('Excipients List',
                                                    style: TextStyle(color: Colors.white54, fontSize: 12)),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                child: Text(data[index].excipientsList,
                                                  overflow: TextOverflow.fade,
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(fontSize: 12,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.bold),),
                                              ),

                                              ExpansionTile(
                                                title: const Text('Additional Information',
                                                    style: TextStyle(color: Colors.white54, fontSize: 12)),
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                                    child: Text('Additional information:',
                                                        style: TextStyle(color: Colors.white54, fontSize: 12)
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                                    child: Text('ATC-Code: ${data[index].atccode}, url: ${data[index].url}',
                                                        overflow: TextOverflow.fade,
                                                        textAlign: TextAlign.start,
                                                        style: const TextStyle(fontSize: 12,
                                                            color: Colors.white,
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

                                  ],
                                ),


                              ),
                            ),
                          )
                        ]));
                  },
                );
              }),
        ),
      ),
    );
  }
}