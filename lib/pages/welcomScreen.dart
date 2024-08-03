import 'package:drugitudeleviosa/pages/welcomeScreenCautionTLC.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme_provider.dart';


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
    return Scaffold(backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(flex: 3,
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
            SizedBox(height: 80),
        Flexible(flex: 2,
                child: Text('Thank you for choosing Drugitude', style: TextStyle(),)),
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
            Flexible(flex: 3,
              child: OutlinedButton(

                  style:  ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.secondary),),
              //     ElevatedButton.styleFrom(
              //   backgroundColor:
              //   // Colors.white,
              //   Theme.of(context).colorScheme.primary,
              //   // textStyle: TextStyle(backgroundColor: Theme.of(context).colorScheme.secondary,)
              //
              // ),
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
                  child: Text('Get Started', style: TextStyle(
                      color:
                      Theme.of(context).colorScheme.primary,
                  ), )),
            )
          ],
        ),
      ),
    );
  }
}

