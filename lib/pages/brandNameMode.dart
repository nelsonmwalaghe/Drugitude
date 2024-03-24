import 'package:rive/rive.dart';
import 'package:flutter/material.dart';
import '../apiServiceModels/brandnameapiModel.dart';
import '../drugListCallModel/drugListbrandNamemodel.dart';
import '../searchModels/brandNameSearch.dart';
import 'drugrequestpage.dart';



class BrandName extends StatefulWidget {
  const BrandName({super.key});

  @override
  State<BrandName> createState() => _BrandNameState();
}

class _BrandNameState extends State<BrandName> {
  final FetchDrugbrandName _drugListbrandName = FetchDrugbrandName();

  String? get query => null;

  // @override
  // void initState() {
  //   FetchDrug().getDrugList();
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Row(
            children: [
              Text('A ', style: TextStyle(color: Colors.white, fontSize: 20), ),
              Text(' - ',style: TextStyle(color: Colors.red, fontSize: 20),),
              Text(' Z', style: TextStyle(color: Colors.white, fontSize: 20),),
              Text(' List of Drugs: ',style: TextStyle(color: Colors.white, fontSize: 20),),
              Text(' Dictionary Mode', style: TextStyle(color: Colors.white, fontSize: 20),),
            ],
          ),
          actions: [
            IconButton(onPressed: () async {
              showSearch(context: context, delegate: SearchDrugBrandName());

              // final results = await showSearch(context: context, delegate: SearchDrug());

              // print('Results: $results');
            },
                icon: const Icon(Icons.search))
          ],
        ),
        backgroundColor: Colors.black,
        body: FutureBuilder<List<DrugListBrandName>>(
            future: _drugListbrandName.getDrugListbrandName(query),
            builder: (context, snapshot) {
              var databrandName = snapshot.data;
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child:
                    SizedBox(width: 192,
                      child: Column(
                        children: [
                          Expanded(child: RiveAnimation.asset('assets/drugiconLoading.riv')),
                          // Text('Loading...', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 15, fontStyle:FontStyle.italic )),
                        ],
                      ),
                    ));
              }
              // else if (snapshot.hasData) {}

              else if (snapshot.hasData && snapshot.data!.isEmpty){
                return  Center(
                  child: SizedBox(width: double.infinity,
                    child: Card(color: Colors.black,
                      child: Column(
                        children: [
                          const Card(color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("Oops...",
                                        style: TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline), textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("We can't seem to find what you are looking for.",
                                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("What could have possibly gone wrong?",
                                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                  ),
                                ],
                              )),
                          const Expanded(child: RiveAnimation.asset('assets/drugitudenodata.riv')),
                          const Card(color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("1. TYPO", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                  Text("Happens to the best of us. Please Spell check the Inquiry in search box above and try again. If all is correct then...",
                                      style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                ],
                              )),


                          Card(color: Colors.black,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("2. INQUIRY MISSING IN LIBRARY", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                  const Column(
                                    children: [
                                      Text("Our Codex probably doesn't have the information you are looking for. ",
                                          style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                      Text("Please feel free to request for the Information you need through our Request Portal",
                                          style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                    ],
                                  ),
                                  SizedBox(width: 200, height: 30,
                                    child: ElevatedButton(
                                        onPressed: (){
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const DrugRequestPage(),
                                              ));
                                        }, child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.mail_outline_rounded, size: 30, color: Colors.green,),
                                        Text('Request Drug', style: TextStyle(fontSize: 15, color: Colors.black))
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
              else if (snapshot.hasError){
                return Center(
                  child: SizedBox(width: double.infinity,
                    child: Card(color: Colors.black,
                      child: Column(
                        children: [
                          const Card(color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("Oops...",
                                        style: TextStyle(color: Colors.white,fontSize: 25,fontStyle: FontStyle.italic, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline), textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("Seems like we have stumbled upon some critical error.",
                                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text("What could have possibly gone wrong?",
                                        style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                  ),
                                ],
                              )),
                          const Expanded(child: RiveAnimation.asset('assets/drugitudeError.riv')),
                          const Card(color: Colors.black,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("1. NETWORK ERROR", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                  Text("Please check your internet connection and try again",
                                      style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                ],
                              )),
                          Card(color: Colors.black,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text("2. AIRPLANE MODE IS ON", style: TextStyle(color: Colors.white, decorationStyle: TextDecorationStyle.solid,decorationColor: Colors.white, decoration: TextDecoration.underline),textAlign: TextAlign.center),
                                  ),
                                  const Column(
                                    children: [
                                      Text("Please turn on your connection by turning Airplane Mode off. ",
                                          style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                      Text("If you have checked all above options and still find this error, please contact our Administrator via email: drugitude@ridcoltd.co.ke",
                                          style: TextStyle(color: Colors.white),textAlign: TextAlign.center),
                                    ],
                                  ),
                                  SizedBox(width: 200, height: 30,
                                    child: ElevatedButton(
                                        onPressed: (){
                                          Navigator.pop(context);
                                        }, child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.exit_to_app_sharp, size: 30, color: Colors.green,),
                                        Text('Close', style: TextStyle(fontSize: 15, color: Colors.black))
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
                itemCount: databrandName?.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                        title: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  '${databrandName?[index].category}',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${databrandName?[index].medicineName}',
                                      style: const TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('${databrandName?[index].innName}',
                                        style: const TextStyle(color: Colors.black)),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )),
                  );
                },
              );
            }),
      ),
    );
  }
}
