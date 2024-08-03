import 'package:drugitudeleviosa/pages/adrsOptionsPage.dart';
import 'package:drugitudeleviosa/pages/searchOptionsPage.dart';
import 'package:flutter/material.dart';
import 'aboutDrugitude.dart';
import 'adrsReportPage.dart';
import 'dictionaryMode.dart';
import 'drugrequestpage.dart';
import 'landingpage.dart';
class AdrsLandingPage extends StatefulWidget {
  const AdrsLandingPage({super.key});

  @override
  State<AdrsLandingPage> createState() => _AdrsLandingPageState();
}

class _AdrsLandingPageState extends State<AdrsLandingPage> {

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
      child: Scaffold(floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const DrugRequestPage(),
                              ));

                        },
                        child: Column(
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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(onPressed: (){Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const AdrsOptionsPage(),
              ));},
              icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.primary,)),
          backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.8),
          iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
          elevation: 8,
          // shadowColor: Colors.red.withOpacity(.1),
          shape: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          title: Padding(
            padding: EdgeInsets.only(left: 0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'DRUGITUDE',
                      style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  imageGet(),
                ),
                fit: BoxFit.cover,
                ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: SingleChildScrollView(
              child: Card(shape: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(25)
                  )),
                color: Theme.of(context).colorScheme.surface.withOpacity(0.7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'ADVERSE DRUG REACTIONS REPORT PORTAL',
                        style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline),
                      ),
                    ),
                    Text(
                      'Your support and contribution towards Regional Pharmacovigilance System is appreciated',
                      style: TextStyle(color: Theme.of(context).colorScheme.primary),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 16.0, bottom: 0, left: 8, right: 8),
                      child: Text(
                        '"You need not be certain...Just be suspicious!"',
                        style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 17, decoration: TextDecoration.underline),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Submission of a report does not constitute an admission that medical personnel or manufacturer or the product caused or contributed to the event.',
                        style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 14), textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Patient’s identity is held in strict confidence and program staff is not expected to and will not disclose reporter’s identity in response to any public request.',
                        style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 14), textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Information supplied by you will contribute to the improvement of drug safety and therapy in the East Africa Region.',
                        style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 14), textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Completed Reports will be sent to the National Pharmacy and Poisons Board of the country case is reported ',
                        style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 14), textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 0, left: 8, right: 8),
                      child: Text(
                        'PLEASE NOTE!',
                        style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 20), textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 0, left: 8, right: 8),
                      child: Text(
                        'ADRs reports are quite vast and detailed. Precision is expected. With this in mind, we suggest that the reporter should familiarize themselves with the information requested for in the various entry fields, gather the necessary data and proceed accordingly.',
                        style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 14), textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OutlinedButton(
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const AdrsReportPage(),
                                    ));
                              },
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),
                                fixedSize: WidgetStatePropertyAll(Size(130, 30)),
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'PROCEED',
                                    style: TextStyle(
                                        color: Theme.of(context).colorScheme.primary, fontSize: 12),
                                  ),
                                  Icon(Icons.navigate_next,
                                      size: 20, color: Theme.of(context).colorScheme.primary),
                                ],
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(height: 160)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
