import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../pages/landingpage.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const LandingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.black,
      skipStyle: ButtonStyle(
          textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 17)),
          foregroundColor: MaterialStateProperty.all(Colors.white)),
      allowImplicitScrolling: false,
      autoScrollDuration: 300000,
      infiniteAutoScroll: false,
      pages: [
        PageViewModel(
          title: "",
          bodyWidget:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(width: double.infinity,
                    child: SpinKitPumpingHeart(
                      color: Colors.white,
                      size: 70,
                      duration: Duration(milliseconds:1000),
                    )
                ),
                Text('Welcome',
                    style: GoogleFonts.robotoCondensed(
                        fontSize: 22,
                        textStyle: const TextStyle(color: Colors.white),
                        fontWeight: FontWeight.w500,)),
                const SizedBox(height: 10),
                const SizedBox(width: double.infinity, height: 40,
                    child: Image(image: AssetImage('assets/DrugitudeLogo.png'))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Your one stop all online Drug Index solutions ',textAlign: TextAlign.center,
                      style: GoogleFonts.robotoCondensed(
                        fontSize:20,
                        textStyle: const TextStyle(color: Colors.white),
                        )),
                ),
              ],
            ),
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(width: 500,
                    child: SpinKitFadingGrid(
                      color: Colors.white,
                      size: 70,
                      duration: Duration(milliseconds:3000),
                    )
                ),
                // SizedBox(width: 150,
                //     child: Image(image: AssetImage('favicon.png'))),
                Text('Drugitude has three main functions',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 22,
                      textStyle: const TextStyle(color: Colors.white),
                      fontWeight: FontWeight.w500,)),
                Text('1. Search',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 22,
                      textStyle: const TextStyle(color: Colors.white),
                      fontWeight: FontWeight.w500,)),
                Text('2. Request',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 22,
                      textStyle: const TextStyle(color: Colors.white),
                      fontWeight: FontWeight.w500,)),
                Text('3. Report',
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 22,
                      textStyle: const TextStyle(color: Colors.white),
                      fontWeight: FontWeight.w500,)),
                const SizedBox(height: 10),

              ],
            ),
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(color: Colors.transparent,
              child: Column(
                children: [
                  Text('Welcome',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 22,
                        textStyle: const TextStyle(color: Colors.white),
                        fontWeight: FontWeight.w500,)),
                  Text('To',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 22,
                        textStyle: const TextStyle(color: Colors.white),
                        fontWeight: FontWeight.w500,)),
                  const SizedBox(height: 10),
                  const SizedBox(width: double.infinity,
                      child: Image(image: AssetImage('assets/DrugitudeLogo.png'))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Your all stop Online Drug Index solution ',textAlign: TextAlign.center,
                        style: GoogleFonts.robotoCondensed(
                          fontSize:30,
                          textStyle: const TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
        PageViewModel(
          title: "",
          bodyWidget:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(color: Colors.transparent,
              child: Column(
                children: [
                  Text('Welcome',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 22,
                        textStyle: const TextStyle(color: Colors.white),
                        fontWeight: FontWeight.w500,)),
                  Text('To',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 22,
                        textStyle: const TextStyle(color: Colors.white),
                        fontWeight: FontWeight.w500,)),
                  const SizedBox(height: 10),
                  const SizedBox(width: double.infinity,
                      child: Image(image: AssetImage('assets/DrugitudeLogo.png'))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Your all stop Online Drug Index solution ',textAlign: TextAlign.center,
                        style: GoogleFonts.robotoCondensed(
                          fontSize:30,
                          textStyle: const TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),

      ],
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      // onChange: (val) {},
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(
        Icons.arrow_forward,
      ),
      done: const Text('Done',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 248, 64, 64))),
      onDone: () => _onIntroEnd(context),
      nextStyle: ButtonStyle(
          foregroundColor:
          MaterialStateProperty.all(const Color.fromARGB(255, 248, 64, 64))),
      dotsDecorator: const DotsDecorator(
        size: Size.square(10),
        activeColor: Colors.redAccent,
        activeSize: Size.square(17),
      ),
    );
  }
}