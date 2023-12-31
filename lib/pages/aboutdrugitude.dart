import 'package:drugitudeleviosa/pages/landingpage.dart';
import 'package:drugitudeleviosa/pages/searchOptionsPage.dart';
import 'package:flutter/material.dart';


import 'dictionaryMode.dart';
import 'drugrequestpage.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.white,elevation: 8,
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
      bottomNavigationBar: BottomAppBar(height: 54.0,
        notchMargin: BorderSide.strokeAlignOutside,elevation: 8,padding: const EdgeInsets.only(left: 0,right: 0, bottom: 0, top: 0),
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:0.0, right:5, bottom: 0, top: 0),
              child: Row(
                children: [
                  TextButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LandingPage(),));
                  }, child: const Column(
                    children: [
                      Icon(Icons.home_filled, color: Colors.black,),
                      Text('Home', style: TextStyle(fontSize: 9.0, color: Colors.black))
                    ],
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:0.0, right:5, bottom: 0, top: 0),
              child: Row(
                children: [
                  TextButton(onPressed: (){Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                        const DictionaryMode(),
                      ));}, child: const Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.menu_book_outlined, color: Colors.black,),
                      Text('Dictionary Mode', style: TextStyle(fontSize: 9.0, color: Colors.black))
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
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                          const DrugRequestPage(),
                        ));
                  }, child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.mail_outline_rounded, color: Colors.black,),
                      Text('Request Drug', style: TextStyle(fontSize: 9.0, color: Colors.black))
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
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const AboutPage(),
                    //     ));
                  }, child: const Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.corporate_fare_outlined, color: Colors.grey,),
                      Text('About', style: TextStyle(fontSize: 9.0, color: Colors.grey))
                    ],
                  )),
                ],
              ),
            ),
            const SizedBox(width: 52,)
          ],

        ),
      ),
      extendBody: false,
      drawer: const Padding(
        padding: EdgeInsets.only(top: 56.0),
        child:
        SizedBox(height: 278, width: 150,
          // child: Drawer(
          //     backgroundColor: Colors.black,
          //     shape: const OutlineInputBorder(
          //         borderSide: BorderSide(color: Colors.black),
          //         borderRadius: BorderRadius.only(
          //           bottomRight: Radius.circular(50),
          //           topRight: Radius.circular(50),
          //         )),
          //     child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Row(
          //           children: [
          //             SizedBox(height: 26, width: 150,
          //               child: ElevatedButton(
          //                   onPressed:(){
          //                     Navigator.push(context, MaterialPageRoute(builder: (context) => const LandingPage(),));
          //                   },
          //                   child: const Row(
          //                     children: [
          //                       Icon(Icons.home_outlined, size: 20, color: Colors.black,),
          //                       Text('Home', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),)
          //                     ],
          //                   )
          //               ),
          //             ),
          //           ],
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(top: 8.0, bottom: 50.0),
          //           child: Row(
          //             children: [
          //               SizedBox(height: 26, width: 150,
          //                 child: ElevatedButton(
          //                     onPressed:(){
          //                       // Navigator.pop(context, MaterialPageRoute(builder: (context) => SearchOptions(),));
          //                     },
          //                     child: const Row(
          //                       children: [
          //                         Icon(Icons.medication_outlined, size: 20, color: Colors.grey,),
          //                         Text('Search', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),)
          //                       ],
          //                     )
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(top: 8.0, bottom:50.0 ),
          //           child: Row(
          //             children: [
          //               SizedBox(height: 26, width: 150,
          //                 child: ElevatedButton(
          //                     onPressed:(){
          //                       Navigator.push(context, MaterialPageRoute(builder: (context) => const DrugRequestPage(),));
          //                     },
          //                     child: const Row(
          //                       children: [
          //                         Icon(Icons.request_page_outlined, size: 20, color: Colors.black,),
          //                         Text('Request Drug', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),)
          //                       ],
          //                     )
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Padding(
          //           padding: const EdgeInsets.only(top: 8.0, bottom:0.0),
          //           child: Row(
          //             children: [
          //               SizedBox(height: 26, width: 150,
          //                 child: ElevatedButton(
          //                     onPressed:(){
          //                       // Navigator.pop(context, MaterialPageRoute(builder: (context) => LandingPage(),));
          //                     },
          //                     child: const Row(
          //                       children: [
          //                         Icon(Icons.perm_device_info_outlined, size: 20, color: Colors.grey,),
          //                         Text('About', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey),)
          //                       ],
          //                     )
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     )),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);},
            icon: const Icon(Icons.arrow_back, color: Colors.white,)),
        backgroundColor: Colors.black,
        title: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'DRUGITUDE',
                  style: TextStyle(color: Colors.white, fontSize: 20),
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
            Navigator.pop(context, MaterialPageRoute(builder: (context) => const LandingPage(),));

            // final results = await showSearch(context: context, delegate: SearchDrug());

            // print('Results: $results');
          },
              icon: const Icon(Icons.close_sharp, color: Colors.white,))
        ],
      ),
      backgroundColor: Colors.black,
      body:  const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Text('What is Drugitude?', style: TextStyle(color: Colors.white),)),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 100,
                    child: Image(image: AssetImage('drugitudeicon.png')),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Drugitude is an app that attempts to conceptualize the idea of a centralized list of all Human and Veterinary drugs in the World (currently non-existing), providing an easy to search platform and reliable information, easily accessed by Medical Professionals, Students & untrained users, limiting jargon; providing clear and concise drug information.",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("This concept utilizes data from European Medicines Agency's (EMA) download data, 'European public assessment reports (EPAR)' by creating an API model to prove the concept. The developer utilizes this example to illustrate the efficiency of having a centralized mechanism of obtaining all drugs within the world, with the hopes of providing an information hub to make an organized and easily accessible search platform",
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 40),
                child: Text("With a background in DataBase management, Software development, android engineering and Pharmaceutical Technology, the developer identifies a niche and provided a conceptual answer to the gap within Medical Industry, providing links among Pharmaceutical Manufacturers, Marketers, Medical Professionals, Students, Drug Users and patients, ensuring clarity and ease of access to empirical medical data sourced from viable medical information sources.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
