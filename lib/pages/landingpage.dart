import 'package:drugitudeleviosa/pages/messageconfirmation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../apiServiceModels/daydrugapimodel.dart';
// import '../drugListCallModel/drugofthedayinputmodel.dart';
import '../theme/theme_provider.dart';
import 'aboutDrugitude.dart';
import 'adrsOptionsPage.dart';
import 'dictionaryMode.dart';
import 'drugdictionarydb.dart';
import 'drugrequestpage.dart';
import 'searchOptionsPage.dart';
import 'package:rive/rive.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});


  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {


  late bool _customIcon = false;
  final FetchDrugDayDrug _daydrugList = FetchDrugDayDrug();
  // var now = new DateTime.now();
  // print(new DateFormat("yyyy-MM-dd").format(now));

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
    if ( minute < 0 ) {image = background2;}
    else if (minute < 2) {image = background3;}
    else if (minute < 4) {image = background4;}
    else if (minute < 6) {image = background5;}
    else if (minute < 8) {image = background6;}
    else if (minute < 10) {image = background7;}
    else if (minute < 12) {image = background8;}
    else if (minute < 14) {image = background9;}
    else if (minute < 16) {image = background10;}
    else if (minute < 18) {image = background11;}
    else if (minute < 20) {image = background12;}
    else if (minute < 22) {image = background13;}
    else if (minute < 24) {image = background14;}
    else if (minute < 26) {image = background15;}
    else if (minute < 28) {image = background16;}
    else if (minute < 30) {image = background17;}
    else if (minute < 32) {image = background18;}
    else if (minute < 34) {image = background19;}
    else if (minute < 36) {image = background20;}
    else if (minute < 38) {image = background21;}
    else if (minute < 40) {image = background22;}
    else if (minute < 42) {image = background23;}
    else if (minute < 44) {image = background24;}
    else if (minute < 46) {image = background25;}
    else if (minute < 48) {image = background26;}
    else if (minute < 50) {image = background27;}
    else if (minute < 52) {image = background28;}
    else if (minute < 54) {image = background29;}
    else if (minute < 56) {image = background30;}
    else if (minute < 58) {image = background31;}
    else if (minute < 60) {image = background32;}
    else if (hour < 02) {image = background33;}
    else if (hour < 06) {image = background34;}
    else if (hour < 08) {image = background35;}
    else if (hour < 09) {image = background36;}
    else {image = background9;}
    return image;
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //     const LandingPage(),
                      //   ));
                      }, child:  Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_filled, color: Theme.of(context).colorScheme.tertiary,),
                        Text('Home', style: TextStyle(fontSize: 9.0, color: Theme.of(context).colorScheme.tertiary))
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
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const DictionaryMode(),
                        ));
                          },
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
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
        drawer: Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 5 ),
            child: SizedBox(height: 480, width: 300,
              child: Drawer(
                  elevation: BorderSide.strokeAlignOutside,
                  backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(.4),
                  shape: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50),
                      )),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 160,
                                      child: OutlinedButton(
                                          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
                                          onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => const AboutPage(),
                                            ));
                                      },
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.perm_device_info_outlined,
                                                size: 20,
                                                color: Theme.of(context).colorScheme.primary,
                                              ),
                                              Text(
                                                'About',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(context).colorScheme.primary),
                                              )
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const Flexible(flex: 1,
                                child: SizedBox(height: 10)),
                            Flexible(flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 160,
                                      child:
                                      OutlinedButton(
                                          style:  ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
                                          onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                              const SearchOptions(),
                                            ));
                                      }, child: Row(
                                        children: [
                                          Icon(
                                            Icons.medication_outlined,
                                            size: 20,
                                            color: Theme.of(context).colorScheme.primary,
                                          ),
                                          Text(
                                            'Search',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context).colorScheme.primary),
                                          )
                                        ],
                                      )),
                                      // ElevatedButton(
                                      //     onPressed: () {
                                      //       Navigator.push(
                                      //           context,
                                      //           MaterialPageRoute(
                                      //             builder: (context) =>
                                      //             const SearchOptions(),
                                      //           ));
                                      //     },
                                      //     child: Row(
                                      //       children: [
                                      //         Icon(
                                      //           Icons.medication_outlined,
                                      //           size: 20,
                                      //           color: Theme.of(context).colorScheme.primary,
                                      //         ),
                                      //         Text(
                                      //           'Search',
                                      //           style: TextStyle(
                                      //               fontSize: 12,
                                      //               fontWeight: FontWeight.bold,
                                      //               color: Theme.of(context).colorScheme.primary),
                                      //         )
                                      //       ],
                                      //     )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Flexible(flex: 1,
                                child: SizedBox(height: 10)),
                            Flexible(flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 160,
                                      child:
                                      OutlinedButton(
                                          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                              const DrugRequestPage(),
                                            ));
                                      }, child: Row(
                                      children: [
                                      Icon(
                                      Icons.mail_outline_rounded,
                                      size: 20,
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                                    Text(
                                      'Request Drug',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context).colorScheme.primary),
                                    )
                                  ],
                                )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Flexible(flex: 1,
                                child: SizedBox(height: 10)),
                            Flexible(flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0, bottom: 0.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 160,
                                      child:
                                      OutlinedButton(
                                          style:ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => const DictionaryDB(),
                                                ));
                                          }, child: Row(
                                        children: [
                                          Icon(
                                            Icons.airplane_ticket_outlined,
                                            size: 20,
                                            color: Theme.of(context).colorScheme.primary,
                                          ),
                                          Text(
                                            'Offline Mode',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context).colorScheme.primary),
                                          )
                                        ],
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Flexible(flex: 1,
                                child: SizedBox(height: 10)),
                            Flexible(flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0, bottom: 0.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 160,
                                      child: OutlinedButton(
                                          style:  ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => const AdrsOptionsPage(),
                                                ));
                                          },
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.report,
                                                size: 20,
                                                color:Theme.of(context).colorScheme.primary,
                                              ),
                                              Text(
                                                'ADRs Report',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(context).colorScheme.primary),
                                              )
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Flexible(flex: 1,
                                child: SizedBox(height: 10)),

                            Flexible(flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      width: 170,
                                      child: OutlinedButton(
                                          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                  const DictionaryMode(),
                                                ));
                                          },
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.menu_book_outlined,
                                                size: 20,
                                                color: Theme.of(context).colorScheme.primary,
                                              ),
                                              Text(
                                                ' Dictionary Mode',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(context).colorScheme.primary),
                                              )
                                            ],
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SizedBox(height: 104, width: 87,
                            child: Card(color: Colors.transparent,
                              shape: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(Radius.circular(27))),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  OutlinedButton(
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.primary),),
                                    onPressed:() {Provider.of<ThemeProvider>(context, listen: false).toggleTheme();},

                                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.light_mode, color: Theme.of(context).colorScheme.secondary,),
                                      ],
                                    ),),
                                  SizedBox(width: 2,),
                                  // Text("or", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                                  OutlinedButton(
                                    style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
                                    onPressed:() {
                                      Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                                    },

                                    child: Row(
                                      children: [
                                        Icon(Icons.dark_mode,color: Theme.of(context).colorScheme.primary,),

                                      ],
                                    ),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),

        extendBodyBehindAppBar: true,
        appBar: AppBar(

          iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
          elevation: 8,
          // shadowColor: Colors.red.withOpacity(.1),
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              borderSide: BorderSide(width: 2,
                  color: Colors.white,
                  strokeAlign: double.maxFinite)),
          backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(.9),
          title: Padding(
            padding:  const EdgeInsets.only(left: 0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Row(
                  children: [
                    Text('DRUGITUDE', style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 20),),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        style: IconButton.styleFrom(backgroundColor:
                    Colors.transparent,
                    // Theme.of(context).colorScheme.primary,
                    ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SearchOptions(),
                              ));
                        }, icon: Icon(Icons.search, color: Theme.of(context).colorScheme.primary)),

        //             ElevatedButton(
        //                 style: ElevatedButton.styleFrom(
        //             backgroundColor:
        //             Colors.transparent,
        //             // Theme.of(context).colorScheme.primary,
        //   // textStyle: TextStyle(backgroundColor: Theme.of(context).colorScheme.secondary,)
        //
        // ),
        //                 onPressed: () {
        //                   Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                         builder: (context) => const SearchOptions(),
        //                       ));
        //                 },
        //                 child: const Row(
        //                   children: [
        //                     // Text('search drug', style: TextStyle(color: Colors.white),),
        //                     Icon(Icons.search, color: Colors.white),
        //                   ],
        //                 )),
                    IconButton(style: IconButton.styleFrom(backgroundColor:
                    Colors.transparent,
                      // Theme.of(context).colorScheme.primary,
                    ),
                        onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MessageConfirmation(),));},
                        icon: Icon(Icons.notifications_outlined, color: Theme.of(context).colorScheme.primary, size: 20,)),
                    // ElevatedButton(
                    //     style: const ButtonStyle(
                    //         backgroundColor:
                    //         WidgetStatePropertyAll(Colors.transparent)),
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //             builder: (context) => const MessageConfirmation(),
                    //           ));
                    //     },
                    //     child: const Row(
                    //       children: [
                    //         // Text('search drug', style: TextStyle(color: Colors.white),),
                    //         Icon(Icons.notifications_outlined, color: Colors.white, size: 20,),
                    //       ],
                    //     )),
                  ],
                ),

              ],
            ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageGet(),
                ),
                fit: BoxFit.cover,
              // opacity: 0.6
            ),
          ),
          child:
          FutureBuilder(
            future: _daydrugList.getAlldayDrug(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const
                Center(
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

              } else if(_daydrugList.dayDrug.contains('empty')){
                return const Text('No Data',
                  style: TextStyle(fontSize: 24.0,),);
              }

              else if (snapshot.hasError){
                return Center(
                  child: SizedBox(width: double.infinity,
                    child: Card(color:  Theme.of(context).colorScheme.surface,
                      child: Column(
                        children: [
                           Card(color: Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text("Oops...",
                                        style: TextStyle(color:  Theme.of(context).colorScheme.primary,fontSize: 25,fontStyle: FontStyle.italic, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline), textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text("Seems like we have stumbled upon some critical error.",
                                        style: TextStyle(color:  Theme.of(context).colorScheme.primary),textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text("What could have possibly gone wrong?",
                                        style: TextStyle(color:  Theme.of(context).colorScheme.primary),textAlign: TextAlign.center),
                                  ),
                                ],
                              )),
                          const Expanded(child: RiveAnimation.asset('assets/drugitudeError.riv')),
                           Card(color:  Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("1. NETWORK ERROR", style: TextStyle(color:  Theme.of(context).colorScheme.primary, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                  Text("Please check your internet connection and try again",
                                      style: TextStyle(color: Theme.of(context).colorScheme.primary),textAlign: TextAlign.center),
                                ],
                              )),
                          Card(color: Theme.of(context).colorScheme.surface,
                              child: Column(
                                children: [
                                   Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("2. AIRPLANE MODE IS ON", style: TextStyle(color: Theme.of(context).colorScheme.primary, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                   Column(
                                    children: [
                                      Text("Please turn on your connection by turning Airplane Mode off. ",
                                          style: TextStyle(color: Theme.of(context).colorScheme.primary),textAlign: TextAlign.center),
                                      Text("If you have checked all above options and still find this error, please contact our Administrator via email: drugitude@ridcoltd.co.ke",
                                          style: TextStyle(color: Theme.of(context).colorScheme.primary),textAlign: TextAlign.center),
                                    ],
                                  ),
                                  SizedBox(width: 200, height: 30,
                                    child: ElevatedButton(
                                        onPressed: (){
                                          Navigator.pop(context);
                                        }, child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.exit_to_app_sharp, size: 30, color: Colors.green,),
                                        Text('Close', style: TextStyle(fontSize: 15, color: Theme.of(context).colorScheme.primary))
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
                  itemCount: _daydrugList.dayDrug.length,
                  itemBuilder: (context, index) {
                    return Card(color: Theme.of(context).colorScheme.surface.withOpacity(0.8),borderOnForeground: false,
                        shape: const OutlineInputBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.white)
                    ),
                      child: ListTile(
                          title: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child:
                                  Center(
                                    child: Column(
                                      children: [
                                         Padding(
                                          padding: const EdgeInsets.only(top: 25.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Drug of the Day',
                                      style: TextStyle(decoration: TextDecoration.underline,
                                          // decorationThickness: BouncingScrollSimulation.maxSpringTransferVelocity,
                                          fontSize: 20, color: Theme.of(context).colorScheme.primary.withOpacity(0.8))),
                                        ),
                                        Text("${_daydrugList.dayDrug[index]['medicineName']}",
                                          style: TextStyle(color: Theme.of(context).colorScheme.primary, height:1,fontSize: 50, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                        Card(
                                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.white)),
                                          color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                                          child: ExpansionTile(shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Colors.white)),
                                            trailing: Icon(_customIcon ? Icons.visibility_sharp : Icons.visibility_off),
                                            title:  Text("Drug Image",textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 12, color: Theme.of(context).colorScheme.primary)),
                                            children: [
                                              Center(
                                                  child: Image.network(
                                                     "${_daydrugList.dayDrug[index]['productImageUrl']}",
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
                                     Padding(
                                      padding: const EdgeInsets.only(top: 2.0, bottom: 0, left: 8, right: 8),
                                      child: Text('Active Ingredient',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Theme.of(context).colorScheme.primary,decoration: TextDecoration.underline, fontSize: 12),),
                                    ),
                                        // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                      child: Text('${_daydrugList.dayDrug[index]['inn_name']}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Theme.of(context).colorScheme.primary, fontSize: 20, fontWeight: FontWeight.bold),),
                                    ),
                                        Padding(
                                      padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                      child: Text('Therapuetic Area',
                                        style: TextStyle(color: Theme.of(context).colorScheme.primary,decoration: TextDecoration.underline ,fontSize: 12),),
                                    ),
                                        Text("${_daydrugList.dayDrug[index]['therapeuticArea']}",
                                                    style: TextStyle(
                                                        color: Theme.of(context).colorScheme.primary,
                                                        fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                        Padding(
                                      padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                      child: Text('Pharmacotherpuetic Group',
                                          style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline,fontSize: 12)),
                                    ),
                                        Text("${_daydrugList.dayDrug[index]['humanPharmacotherapeuticGroup']}",
                                            style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                         Padding(
                                          padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Approx Retail Price',
                                              style: TextStyle(color: Theme.of(context).colorScheme.primary,decoration: TextDecoration.underline ,fontSize: 12)),
                                        ),
                                        Text("${_daydrugList.dayDrug[index]['approxRetailPrice']}",
                                            style: TextStyle(
                                                color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                         Padding(
                                      padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                      child: Text('Authorization Status',
                                          style: TextStyle(color: Theme.of(context).colorScheme.primary,decoration: TextDecoration.underline ,fontSize: 12)),
                                    ),
                                        Text("${_daydrugList.dayDrug[index]['authorisationStatus']}",
                                            style: TextStyle(
                                                color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                                         Padding(
                                          padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Marketing Authorization Company',
                                            style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline ,fontSize: 12),),
                                        ),
                                        Padding(
                                          padding:  const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                          child: Text("${_daydrugList.dayDrug[index]['marketingAuthorisationHolderorCompanyName']}",
                                              style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.bold,),textAlign: TextAlign.center
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                          child: Text('Local Representative Company',
                                            style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline ,fontSize: 12),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                          child: Text("${_daydrugList.dayDrug[index]['localRepresentativeHolderCompanyName']}",
                                              style: TextStyle(color: Theme.of(context).colorScheme.primary,fontSize: 12),textAlign: TextAlign.center
                                          ),
                                        ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
                                      child: Text('Indication and Use',
                                        style: TextStyle(color:Theme.of(context).colorScheme.primary,decoration: TextDecoration.underline, fontSize: 12)),
                                    ),
                                    Text("${_daydrugList.dayDrug[index]['conditionOrIndication']}",
                                     overflow: TextOverflow.fade,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 12,
                                          color: Theme.of(context).colorScheme.primary,
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
                              ),

                              const SizedBox(height: 160,)
              ]
              ),
              )
              );
              }
              );

              }
              ),
          // FutureBuilder<List<DayDrug>>(
          //   future: _daydrugList.getDayDrug(query),
          //   builder: (context, snapshot) {
          //     var dataDayDrug = snapshot.data;
          //     if (!snapshot.hasData) {
          //       return const Center(child:
          //          SizedBox(width: 192,
          //                  child: Column(
          //                    children: [
          //                      Expanded(child: RiveAnimation.asset('assets/drugiconLoading.riv'),),
          //                      // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
          //                    ],
          //                  ),
          //
          //
          //          // Padding(
          //          //   padding: const EdgeInsets.only(top:200.0),
          //          //   child: SizedBox(width: 192,
          //          //     child: Column(
          //          //       children: [
          //          //         Image.asset('assets/Springrat1.apng'),
          //          //         Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
          //          //       ],
          //          //     ),
          //          //   ),
          //          // )
          //
          //
          //           // SvgPicture.asset("LoadingIcon.svg",semanticsLabel: 'Drugitude Loading Animation',
          //           // // height: 192, width: 192,
          //           //   )
          //           // SpinKitCubeGrid(
          //           //   color: Colors.white,
          //           //   size: 70,
          //           //   duration: Duration(milliseconds: 400),
          //           // )
          //       ));
          //     } else if (snapshot.hasError){
          //       return Center(
          //         child: SizedBox(width: double.infinity,
          //           child: Card(color: Colors.black,
          //             child: Column(
          //               children: [
          //                 const Card(color: Colors.black,
          //                     child: Column(
          //                       children: [
          //                         Padding(
          //                           padding: EdgeInsets.all(2.0),
          //                           child: Text("Oops...",
          //                               style: TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline), textAlign: TextAlign.center),
          //                         ),
          //                         Padding(
          //                           padding: EdgeInsets.all(2.0),
          //                           child: Text("Seems like we have stumbled upon some critical error.",
          //                               style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
          //                         ),
          //                         Padding(
          //                           padding: EdgeInsets.all(2.0),
          //                           child: Text("What could have possibly gone wrong?",
          //                               style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
          //                         ),
          //                       ],
          //                     )),
          //                 const Expanded(child: RiveAnimation.asset('assets/drugitudeError.riv')),
          //                 const Card(color: Colors.black,
          //                     child: Column(
          //                       children: [
          //                         Padding(
          //                           padding: EdgeInsets.all(5.0),
          //                           child: Text("1. NETWORK ERROR", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
          //                         ),
          //                         Text("Please check your internet connection and try again",
          //                             style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
          //                       ],
          //                     )),
          //                 Card(color: Colors.black,
          //                     child: Column(
          //                       children: [
          //                         const Padding(
          //                           padding: EdgeInsets.all(5.0),
          //                           child: Text("2. AIRPLANE MODE IS ON", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
          //                         ),
          //                         const Column(
          //                           children: [
          //                             Text("Please turn on your connection by turning Airplane Mode off. ",
          //                                 style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
          //                             Text("If you have checked all above options and still find this error, please contact our Administrator via email: drugitude@ridcoltd.co.ke",
          //                                 style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
          //                           ],
          //                         ),
          //                         SizedBox(width: 200, height: 30,
          //                           child: ElevatedButton(
          //                               onPressed: (){
          //                                 Navigator.pop(context);
          //                               }, child: const Row(
          //                             mainAxisAlignment: MainAxisAlignment.center,
          //                             children: [
          //                               Icon(Icons.exit_to_app_sharp, size: 30, color: Colors.green,),
          //                               Text('Close', style: TextStyle(fontSize: 15, color: Colors.black))
          //                             ],
          //                           )),
          //                         ),
          //                       ],
          //                     )),
          //               ],
          //             ),
          //           ),
          //         ),
          //       );
          //     }
          //     return ListView.builder(
          //         itemCount: dataDayDrug!.length = 1,
          //         itemBuilder: (context, index) {
          //           return Card(color: Colors.black.withOpacity(0.6),borderOnForeground: false,
          //               shape: const OutlineInputBorder(
          //             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
          //             borderSide: BorderSide(color: Colors.transparent)
          //           ),
          //             child: ListTile(
          //                 title: Row(
          //                   children: [
          //                     Expanded(
          //                       child: Container(
          //                         decoration: BoxDecoration(
          //                           color: Colors.transparent,
          //                           borderRadius: BorderRadius.circular(10),
          //                         ),
          //                         child:
          //                         Center(
          //                           child: Column(
          //                             children: [
          //                               const Padding(
          //                                 padding: EdgeInsets.only(top: 25.0, bottom: 0, left: 8, right: 8),
          //                                 child: Text('Drug of the Day',
          //                             style: TextStyle(
          //                                 decorationThickness: BouncingScrollSimulation.maxSpringTransferVelocity,
          //                                 fontSize: 20, color: Colors.white38)),
          //                               ),
          //                               Text(dataDayDrug[index].medicineName,
          //                                 style: const TextStyle(color: Colors.white, height:1.3,fontSize: 50, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
          //                               Card(color: Colors.black.withOpacity(0.1),
          //                                 child: ExpansionTile(
          //                                   trailing: Icon(_customIcon ? Icons.visibility_sharp : Icons.visibility_off),
          //                                   title:  const Text("Drug Image",textAlign: TextAlign.start,
          //                                       style: TextStyle(
          //                                           fontSize: 12, color: Colors.white54)),
          //                                   children: [
          //                                     Center(
          //                                         child: Image.network(
          //                                             dataDayDrug[index].productImageUrl,
          //
          //                                             frameBuilder: (context, child, frame, wasSynchronouslyLoaded)
          //                                             {
          //                                               return child;
          //                                             },
          //                                             loadingBuilder: (context, child, loadingProgress) {
          //                                               if (loadingProgress == null)
          //                                               {
          //                                                 return child;
          //                                               } else {
          //                                                 return const Center( child:
          //                                                 SizedBox(width: 192, height: 192,
          //                                                   child: Column(
          //                                                     children: [
          //                                                       Expanded(
          //                                                         child: RiveAnimation.asset('assets/drugiconLoading.riv'),),
          //                                                       // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
          //                                                     ],
          //                                                   ),
          //                                                 ),);
          //                                               }
          //                                             }
          //                                         )
          //                                     ),
          //                                   ],
          //                                   onExpansionChanged: (bool expanded) {setState(() => _customIcon = expanded);},
          //                                 ),
          //                               ),
          //                           const Padding(
          //                             padding: EdgeInsets.only(top: 2.0, bottom: 0, left: 8, right: 8),
          //                             child: Text('Active Ingredient',
          //                               textAlign: TextAlign.center,
          //                               style: TextStyle(color: Colors.white54, fontSize: 12),),
          //                           ),
          //                               // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
          //                           Padding(
          //                             padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
          //                             child: Text(dataDayDrug[index].innName,
          //                               textAlign: TextAlign.center,
          //                               style: const TextStyle(
          //                                   color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
          //                           ),
          //                           const Padding(
          //                             padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
          //                             child: Text('Therapuetic Area',
          //                               style: TextStyle(color: Colors.white54,fontSize: 12),),
          //                           ),
          //                               Text(dataDayDrug[index].therapeuticArea,
          //                                           style: const TextStyle(
          //                                               color: Colors.white,
          //                                               fontWeight: FontWeight.bold),textAlign: TextAlign.center),
          //                           const Padding(
          //                             padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
          //                             child: Text('Pharmacotherpuetic Group',
          //                                 style: TextStyle(color: Colors.white54, fontSize: 12)),
          //                           ),
          //                               Text(dataDayDrug[index].humanPharmacotherapeuticGroup,
          //                                   style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
          //                               const Padding(
          //                                 padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
          //                                 child: Text('Approx Retail Price',
          //                                     style: TextStyle(color: Colors.white54, fontSize: 12)),
          //                               ),
          //                               Text(dataDayDrug[index].approxRetailPrice,
          //                                   style: const TextStyle(
          //                                       color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
          //                               const Padding(
          //                             padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
          //                             child: Text('Authorization Status',
          //                                 style: TextStyle(color: Colors.white54, fontSize: 12)),
          //                           ),
          //                               Text(dataDayDrug[index].authorisationStatus,
          //                                   style: const TextStyle(
          //                                       color: Colors.white, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
          //                               const Padding(
          //                                 padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
          //                                 child: Text('Marketing Authorization Company',
          //                                   style: TextStyle(color: Colors.white54, fontSize: 12),),
          //                               ),
          //                               Padding(
          //                                 padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
          //                                 child: Text(dataDayDrug[index].marketingAuthorisationHolderorCompanyName,
          //                                     style: const TextStyle(color: Colors.white, fontSize: 12),textAlign: TextAlign.center
          //                                 ),
          //                               ),
          //                               const Padding(
          //                                 padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
          //                                 child: Text('Local Representative Company',
          //                                   style: TextStyle(color: Colors.white54, fontSize: 12),),
          //                               ),
          //                               Padding(
          //                                 padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
          //                                 child: Text(dataDayDrug[index].localRepresentativeHolderCompanyName,
          //                                     style: const TextStyle(color: Colors.white, fontSize: 12),textAlign: TextAlign.center
          //                                 ),
          //                               ),
          //                           const Padding(
          //                             padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 8, right: 8),
          //                             child: Text('Indication and Use',
          //                               style: TextStyle(color: Colors.white54, fontSize: 12)),
          //                           ),
          //                           Text(dataDayDrug[index].conditionOrIndication,
          //                            overflow: TextOverflow.fade,
          //                             textAlign: TextAlign.center,
          //                             style: const TextStyle(fontSize: 12,
          //                                 color: Colors.white,
          //                                 fontWeight: FontWeight.bold),),
          //
          //                             ],
          //                           ),
          //
          //                               // child: Padding(
          //                               //     padding: EdgeInsets.only(top: 100.0),
          //                               //     child: Center(
          //                               //       child: Column(
          //                               //           crossAxisAlignment: CrossAxisAlignment.center,
          //                               //           children: [
          //                               //             Text(
          //                               //               'Drug of the day',
          //                               //               style: TextStyle(
          //                               //                   decorationThickness:
          //                               //                       BouncingScrollSimulation
          //                               //                           .maxSpringTransferVelocity,
          //                               //                   fontSize: 20,
          //                               //                   color: Colors.white38),
          //                               //             ),
          //                               //             Text('${data_DayDrug?[index].medicineName}',
          //                               //                 style: TextStyle(
          //                               //                     color: Colors.white,
          //                               //                     fontSize: 70,
          //                               //                     fontWeight: FontWeight.bold)),
          //                               //             Column(
          //                               //               children: [
          //                               //                 Text(
          //                               //                   'Active Ingredient',
          //                               //                   style: TextStyle(color: Colors.white54),
          //                               //                 ),
          //                               //                 // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
          //                               //               ],
          //                               //             ),
          //                               //             Padding(
          //                               //               padding: EdgeInsets.only(bottom: 8.0),
          //                               //               child: Text(
          //                               //                 'Melatonin',
          //                               //                 style: TextStyle(
          //                               //                     color: Colors.white,
          //                               //                     fontSize: 20,
          //                               //                     fontWeight: FontWeight.bold),
          //                               //               ),
          //                               //             ),
          //                               //             Text(
          //                               //               'Therapuetic Area',
          //                               //               style: TextStyle(color: Colors.white54),
          //                               //             ),
          //                               //             Text(
          //                               //               'Sleep Initiation and Maintenance Disorders;  Autistic Disorder',
          //                               //               style: TextStyle(
          //                               //                   color: Colors.white,
          //                               //                   fontWeight: FontWeight.bold),
          //                               //             ),
          //                               //             Padding(
          //                               //               padding: EdgeInsets.only(top: 10.0),
          //                               //               child: Column(
          //                               //                 children: [
          //                               //                   Text('Pharmacotherpuetic Group',
          //                               //                       style: TextStyle(
          //                               //                           color: Colors.white54)),
          //                               //                   Text('Psycholeptics',
          //                               //                       style: TextStyle(
          //                               //                           color: Colors.white,
          //                               //                           fontWeight: FontWeight.bold)),
          //                               //                 ],
          //                               //               ),
          //                               //             ),
          //                               //             Padding(
          //                               //               padding: EdgeInsets.only(top: 5.0),
          //                               //               child: Column(
          //                               //                 children: [
          //                               //                   Text('Authorization Status',
          //                               //                       style: TextStyle(
          //                               //                           color: Colors.white54)),
          //                               //                   Text('Authorized',
          //                               //                       style: TextStyle(
          //                               //                           color: Colors.white,
          //                               //                           fontWeight: FontWeight.bold)),
          //                               //                 ],
          //                               //               ),
          //                               //             ),
          //                               //             Padding(
          //                               //               padding: EdgeInsets.only(top: 10.0),
          //                               //               child: Text('Indication and Use',
          //                               //                   style:
          //                               //                       TextStyle(color: Colors.white54)),
          //                               //             ),
          //                               //             Expanded(
          //                               //               child: Padding(
          //                               //                 padding: EdgeInsets.only(
          //                               //                     left: 8.0, right: 8.0, bottom: 1.0),
          //                               //                 child: Text(
          //                               //                   'Slenyto is indicated for the treatment of insomnia in children and adolescents aged 2-18 with Autism Spectrum Disorder (ASD) and / or Smith-Magenis syndrome, where sleep hygiene measures have been insufficient.',
          //                               //                   overflow: TextOverflow.fade,
          //                               //                   textAlign: TextAlign.center,
          //                               //                   style: TextStyle(
          //                               //                       color: Colors.white,
          //                               //                       fontWeight: FontWeight.bold),
          //                               //                 ),
          //                               //               ),
          //                               //             ),
          //                               //           ]),
          //                               //     ),
          //                               //               ),
          //                                             ),),
          //                     ),
          //
          //                     const SizedBox(height: 160,)
          //     ]
          //     ),
          //     )
          //     );
          //     }
          //     );
          //
          //     }
          //     ),
        ),
    )
    );

                }
          }
