import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';

import '../theme/theme_provider.dart';
import 'drugdictionarydb.dart';
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
    return Scaffold(backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.primary),),
                      onPressed:() {Provider.of<ThemeProvider>(context, listen: false).toggleTheme();},

                      child: Row(
                        children: [
                          Text("Light", style: TextStyle(color: Theme.of(context).colorScheme.secondary),),
                          Icon(Icons.light_mode, color: Theme.of(context).colorScheme.secondary),
                        ],
                      ),),
                    SizedBox(width: 10,),
                    Text("or", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                    SizedBox(width: 10,),
                    OutlinedButton(
                      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
                      onPressed:() {
                        Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                      },

                      child: Row(
                        children: [
                          Text("Dark", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                          Icon(Icons.dark_mode,color: Theme.of(context).colorScheme.primary,),

                        ],
                      ),),
                  ],
                ),
              ),
              const SizedBox(height: 20),
               Flexible(flex: 2,
                  child: Text('Choose app state more suitable for you.', style: TextStyle(color: Theme.of(context).colorScheme.primary),)),
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
              const SizedBox(height: 10),
              Flexible(flex: 2,
                child: Column(
                  children: [
          
                     Text('1. ONLINE MODE', style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline,),),
                     Text('This press and play option always requires strong and fast internet connection. It is light and fast, requiring no initial setup.', style: TextStyle(color: Theme.of(context).colorScheme.primary),textAlign: TextAlign.center,),
                    const Center( child:
                    SizedBox(width: 192, height: 100,
                      child: Column(
                        children: [
                          Expanded(
                            child: RiveAnimation.asset('assets/cheetah_run_4.riv'),),
                          // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
                        ],
                      ),
                    ),),
                    OutlinedButton(
                        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
                        onPressed: () {
                          setState(() {
                            var box = Hive.box(SETTINGS_BOX);
                            box.put("welcome_shown", true);
                          });
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LandingPage(),
                              ));
                          // onPressed: () async {
                          //   var box = Hive.box(SETTINGS_BOX);
                          //   box.put("welcome_shown", true);}
                        },
                        child: Text('Enter Online Mode', style: TextStyle(color: Theme.of(context).colorScheme.primary))),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Flexible(flex: 2,
                child: Column(
                  children: [
          
                    Text('2. OFFLINE MODE', style: TextStyle(color: Theme.of(context).colorScheme.primary, decoration: TextDecoration.underline),),
                    Text('Requires an initial short automated set up (approx 2 minutes) with access to the internet, to ensure fast response to future app core functions without internet connection.', style: TextStyle(color: Theme.of(context).colorScheme.primary),textAlign: TextAlign.center,),
                    Center( child:
                    SizedBox(width: 192, height: 100,
                      child: Column(
                        children: [
                          Expanded(
                            child: RiveAnimation.asset('assets/turtle_run2.riv', ),),
                          // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
                        ],
                      ),
                    ),),
                    OutlinedButton(
                        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
                        onPressed: () {
                          setState(() {
                            var box = Hive.box(SETTINGS_BOX);
                            box.put("welcome_shown", true);
                          });
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DictionaryDB(),
                              ));
                          // onPressed: () async {
                          //   var box = Hive.box(SETTINGS_BOX);
                          //   box.put("welcome_shown", true);}
                        },
                        child: Text('Enter Offline Mode', style: TextStyle(color: Theme.of(context).colorScheme.primary))),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // ElevatedButton(style: const ButtonStyle(visualDensity: VisualDensity.comfortable),
                  //     onPressed: () {
                  //       Navigator.pushReplacement(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => const WelcomeScreenTLC(),
                  //           ));
                  //       // onPressed: () async {
                  //       //   var box = Hive.box(SETTINGS_BOX);
                  //       //   box.put("welcome_shown", true);}
                  //     },
                  //     child: const Text('Back')),
                  OutlinedButton(
                      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
                      // style: const ButtonStyle(visualDensity: VisualDensity.comfortable),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LandingPage(),
                            ));
                        // onPressed: () async {
                        //   var box = Hive.box(SETTINGS_BOX);
                        //   box.put("welcome_shown", true);}
                      },
                      child: Text('Skip',style: TextStyle(color: Theme.of(context).colorScheme.primary))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

