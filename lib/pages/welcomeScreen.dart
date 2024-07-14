import 'package:drugitudeleviosa/pages/welcomeScreenCautionTLC.dart';
import 'package:drugitudeleviosa/pages/welcomeScreenCautionTLC.dart';
import 'package:flutter/material.dart';


const String SETTINGS_BOX = "settings";

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Flexible(flex: 2,
                child: Text('Thank you for choosing Drugitude', style: TextStyle(color: Colors.white),)),
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
            Flexible(flex: 3,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeScreenTLC(),
                        ));
                    // onPressed: () async {
                    //   var box = Hive.box(SETTINGS_BOX);
                    //   box.put("welcome_shown", true);}
                  },
                  child: const Text('Get Started')),
            )
          ],
        ),
      ),
    );
  }
}