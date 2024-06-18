import 'package:drugitudeleviosa/apiServiceModels/apiDrugCodex.dart';
import 'package:drugitudeleviosa/pages/searchOptionsPage.dart';
import 'package:drugitudeleviosa/pages/welcomeScreenCautionTLC.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:rive/rive.dart';

import '../searchModels/dictionarymodeazsearch.dart';
import 'aboutDrugitude.dart';
import 'drugdictionarydb.dart';
import 'drugrequestpage.dart';
import 'landingpage.dart';

const String SETTINGS_BOX = "settings";

class ModeChoice extends StatefulWidget {
  const ModeChoice({super.key});

  @override
  State<ModeChoice> createState() => _ModeChoiceState();
}

class _ModeChoiceState extends State<ModeChoice>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(flex: 2,
                child: Text('Choose app state more suitable for you.', style: TextStyle(color: Colors.white),)),
            //     Flexible(flex: 2,
            //   child: SizedBox(
            //   width: 192,
            //     child: Column(
            //       children: [
            //         Expanded(
            //             child: RiveAnimation.asset(
            //                 'assets/drugiconLoading.riv')),
            //         // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
            //
            //       ],
            //     ),
            //   ),
            // ),
            //     Flexible(flex: 2,
            //         child: Text('Drugitude', style: TextStyle(color: Colors.white),)),
            SizedBox(height: 10),
            Flexible(flex: 2,
              child: Column(
                children: [

                  Text('1. ONLINE MODE', style: TextStyle(color: Colors.white, decoration: TextDecoration.underline,decorationColor: Colors.white),),
                  Text('This press and play option always requires strong and fast internet connection. It is light and fast, requiring no initial setup.', style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  Center( child:
                  SizedBox(width: 192, height: 100,
                    child: Column(
                      children: [
                        Expanded(
                          child: RiveAnimation.asset('assets/cheetah_run_2.riv'),),
                        // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
                      ],
                    ),
                  ),),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var box = Hive.box(SETTINGS_BOX);
                          box.put("welcome_shown", true);
                        });
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LandingPage(),
                            ));
                        // onPressed: () async {
                        //   var box = Hive.box(SETTINGS_BOX);
                        //   box.put("welcome_shown", true);}
                      },
                      child: const Text('Enter Online Mode')),
                ],
              ),
            ),
            SizedBox(height: 5),
            Flexible(flex: 2,
              child: Column(
                children: [

                  Text('2. OFFLINE MODE', style: TextStyle(color: Colors.white, decoration: TextDecoration.underline,decorationColor: Colors.white),),
                  Text('Requires an initial short automated set up (approx 2 minutes) with access to the internet, to ensure fast response to future app core functions without internet connection.', style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                  Center( child:
                  SizedBox(width: 192, height: 100,
                    child: Column(
                      children: [
                        Expanded(
                          child: RiveAnimation.asset('assets/turtle_run.riv'),),
                        // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
                      ],
                    ),
                  ),),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var box = Hive.box(SETTINGS_BOX);
                          box.put("welcome_shown", true);
                        });
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DictionaryDB(),
                            ));
                        // onPressed: () async {
                        //   var box = Hive.box(SETTINGS_BOX);
                        //   box.put("welcome_shown", true);}
                      },
                      child: const Text('Enter Offline Mode')),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(style: ButtonStyle(visualDensity: VisualDensity.comfortable),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WelcomeScreenTLC(),
                          ));
                      // onPressed: () async {
                      //   var box = Hive.box(SETTINGS_BOX);
                      //   box.put("welcome_shown", true);}
                    },
                    child: const Text('Back')),
                ElevatedButton(style: ButtonStyle(visualDensity: VisualDensity.comfortable),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LandingPage(),
                          ));
                      // onPressed: () async {
                      //   var box = Hive.box(SETTINGS_BOX);
                      //   box.put("welcome_shown", true);}
                    },
                    child: const Text('Skip')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

