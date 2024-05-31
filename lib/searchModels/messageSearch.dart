import 'package:drugitudeleviosa/messagemodel/messageapimodelsearch.dart';
import 'package:drugitudeleviosa/messagemodel/messagemodel.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';



class MessageSearch extends SearchDelegate {
  final MessageCallPriority _messagepriorityList = MessageCallPriority();
  final messagetosearch = ["HIGH PRIORITY", "ADMINISTRATIVE", "IN APP MESSAGE", "INFORMATIVE"];
  final recentmessages = [
    "HIGH PRIORITY", "ADMINISTRATIVE", "IN APP MESSAGE", "INFORMATIVE"
  ];
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
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if(query.isEmpty){
              close(context, null);
            }
            query = "";
            showSuggestions(context);

          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {
      Navigator.pop(context);
    },
        icon: const Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) =>
    Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(imageGet(),
            ),
            fit: BoxFit.cover,
            opacity: 0.6
        ),
      ),
      child: FutureBuilder<List<Message>>(
          future: _messagepriorityList.getMessage(query),
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
            }
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
                                    Text("Please feel free to request for the Information you need through our Administrator through email: drugitude@ridcoltd.co.ke",
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
                                      Icon(Icons.close_sharp, size: 30, color: Colors.green,),
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
            else if
            (snapshot.hasError) {
              return Center(
                child: SizedBox(
                  width: double.infinity,
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
                return Card(
                    color: Colors.black.withOpacity(0.2),
                    borderOnForeground: false,
                    child: ListTile(
                        title: Row(children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade900.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5.0,),
                                          child: Text(
                                            ' ${data?[index].priority.toString()}',
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 5.0,
                                            bottom: 0,
                                            left: 2,),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.only(
                                                top: 0.0,
                                                bottom: 0,
                                                left: 0,
                                                right: 0),
                                            child: CircleAvatar(backgroundColor: Colors.transparent,
                                                radius: 5,
                                                child: Image.asset(
                                                    "assets/${data?[index].priority}.png")),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 3.0,
                                              bottom: 0,
                                              left: 0,
                                              right: 0),
                                          child: IconButton(
                                              icon: const Icon(
                                                Icons.help_outline_outlined,
                                                color: Colors.grey,
                                                size: 15,),
                                              onPressed: () => showDialog<String>(
                                                context: context,
                                                builder: (context) =>
                                                    SingleChildScrollView(physics: const ClampingScrollPhysics(),
                                                      child: AlertDialog(scrollable: true,
                                                        title: const Text(
                                                            'Message Hierarchy'),
                                                        content: Column(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 0.0,
                                                                  bottom: 0,
                                                                  left: 0,
                                                                  right: 8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  const Text(
                                                                      'HIGH PRIORITY',
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
                                                                            "assets/HIGH PRIORITY.png")),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            const Text(
                                                                "Highest Level of Alert. Consists of Emergency information of high Priority, including Drug Withdrawals and Callbacks."),
                                                            Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  top: 8.0,
                                                                  bottom: 2,
                                                                  left: 0,
                                                                  right: 8),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  const Text(
                                                                      'ADMINISTRATIVE',
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
                                                                            "assets/ADMINISTRATIVE.png")),
                                                                  ),

                                                                ],
                                                              ),
                                                            ),
                                                            const Text(
                                                                "Intermediate Level of Alert. Consists of Government Information, specifically from the Ministry of Health and Pharmacy & Poisons Board (PPB)."),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                              children: [
                                                                const Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      top: 6,
                                                                      bottom: 2,
                                                                      left: 0,
                                                                      right: 5),
                                                                  child: Text(
                                                                      'IN APP MESSAGE',
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
                                                                Padding(
                                                                  padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 6.0,
                                                                      bottom: 2,
                                                                      left: 2,
                                                                      right: 0),
                                                                  child: CircleAvatar(
                                                                      radius: 5,
                                                                      child: Image
                                                                          .asset(
                                                                          "assets/IN APP MESSAGE.png")),
                                                                ),
                                                              ],
                                                            ),
                                                            const Text(
                                                                "Low Level Alert. Consists of Drugitude Application's information and messages from its developers"),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                              children: [
                                                                const Padding(
                                                                  padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                      top: 6,
                                                                      bottom: 2,
                                                                      left: 0,
                                                                      right: 5),
                                                                  child: Text(
                                                                      'INFROMATIVE',
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
                                                                Padding(
                                                                  padding:
                                                                  const EdgeInsets
                                                                      .only(
                                                                      top: 6.0,
                                                                      bottom: 2,
                                                                      left: 2,
                                                                      right: 0),
                                                                  child: CircleAvatar(
                                                                      radius: 5,
                                                                      child: Image
                                                                          .asset(
                                                                          "assets/INFORMATIVE.png")),
                                                                ),
                                                              ],
                                                            ),
                                                            const Text(
                                                                "Medical Information that serve as C.M.E's (Continuous Medical Education) targeting various medical topics"),
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
                                              )),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0.0,
                                          bottom: 0,
                                          left: 2,
                                          right: 2),
                                      child: Text(
                                        '${data?[index].datetimeofmessage}',
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0.0,
                                          bottom: 0,
                                          left: 2,
                                          right: 2),
                                      child: Text(
                                          '${data?[index].title}',
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              decoration:
                                              TextDecoration.underline,
                                              decorationColor: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    // const Padding(
                                    //   padding: EdgeInsets.only(
                                    //       top: 8.0,
                                    //       bottom: 0,
                                    //       left: 8,
                                    //       right: 8),
                                    //   child: Text(
                                    //     'Date of Message',
                                    //     style: TextStyle(
                                    //         color: Colors.white54,
                                    //         fontSize: 12),
                                    //   ),
                                    // ),
                                    // Text('(International Non Proprietary Name)', style: TextStyle(color: Colors.white54))
                                    Card(
                                      color: Colors.black,
                                      child: ExpansionTile(
                                        title: const Text('more..',
                                          style: TextStyle(color: Colors.white54, fontSize: 12),),
                                        children: [
                                          Padding(
                                              padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                              child: SizedBox(width: MediaQuery.of(context).size.width,
                                                  child: Image.network(
                                                      data![index].image,

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
                                              )
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text('Origin',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(color: Colors.white54, fontSize: 12),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 8, right: 8),
                                            child: Text(data[index].sourceorigin,
                                              overflow: TextOverflow.fade,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(color: Colors.white, fontSize: 16),),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0, bottom: 0, left: 2, right: 2),
                                            child: Text('Author',
                                              overflow: TextOverflow.fade,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(color: Colors.white54,fontSize: 12),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 2, right: 2),
                                            child: Text(data[index].author,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),),
                                          ),
                                          Card(
                                            child: ExpansionTile(
                                              title: const Text('Message',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                              backgroundColor: Colors.white,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 0.0, bottom: 0, left: 2, right: 2),
                                                  child: Text(data[index].messagebody,
                                                      textAlign: TextAlign.start,
                                                      style: const TextStyle(color: Colors.black, fontSize: 12 )),
                                                ),
                                              ],
                                            ),
                                          ),



                                        ],
                                      ),
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(
                                    //       top: 0.0,
                                    //       bottom: 0,
                                    //       left: 8,
                                    //       right: 8),
                                    //   child: Text(
                                    //     'Active Substance: ${data?[index].activeSubstance}',
                                    //     overflow: TextOverflow.fade,
                                    //     textAlign: TextAlign.start,
                                    //     style: const TextStyle(
                                    //         color: Colors.white54,
                                    //         fontSize: 12),
                                    //   ),
                                    // ),
                                    // const Padding(
                                    //   padding: EdgeInsets.only(
                                    //       top: 8.0,
                                    //       bottom: 0,
                                    //       left: 8,
                                    //       right: 8),
                                    //   child: Text(
                                    //     'Therapuetic Area',
                                    //     style: TextStyle(
                                    //         color: Colors.white54,
                                    //         fontSize: 12),
                                    //   ),
                                    // ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(
                                    //       top: 0.0,
                                    //       bottom: 0,
                                    //       left: 8,
                                    //       right: 8),
                                    //   child: Text(
                                    //     '${data?[index].therapeuticArea}',
                                    //     textAlign: TextAlign.start,
                                    //     style: const TextStyle(
                                    //         color: Colors.white,
                                    //         fontWeight: FontWeight.bold),
                                    //   ),
                                    // ),
                                    // const Padding(
                                    //   padding: EdgeInsets.only(
                                    //       top: 8.0,
                                    //       bottom: 0,
                                    //       left: 8,
                                    //       right: 8),
                                    //   child: Text('Pharmacotherpuetic Group',
                                    //       style: TextStyle(
                                    //           color: Colors.white54,
                                    //           fontSize: 12)),
                                    // ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(
                                    //       top: 0.0,
                                    //       bottom: 0,
                                    //       left: 8,
                                    //       right: 8),
                                    //   child: Text(
                                    //       '${data?[index].humanPharmacotherapeuticGroup}',
                                    //       style: const TextStyle(
                                    //           color: Colors.white,
                                    //           fontWeight: FontWeight.bold)),
                                    // ),
                                    //
                                    // const Padding(
                                    //   padding: EdgeInsets.only(
                                    //       top: 8.0,
                                    //       bottom: 0,
                                    //       left: 8,
                                    //       right: 8),
                                    //   child: Text(
                                    //     'Marketing Authorization Company',
                                    //     style: TextStyle(
                                    //         color: Colors.white54,
                                    //         fontSize: 12),
                                    //   ),
                                    // ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(
                                    //       top: 0.0,
                                    //       bottom: 0,
                                    //       left: 8,
                                    //       right: 8),
                                    //   child: Text(
                                    //       '${data?[index].marketingAuthorisationHolderorCompanyName}',
                                    //       style: const TextStyle(
                                    //           color: Colors.white,
                                    //           fontWeight: FontWeight.bold)),
                                    // ),
                                    // const Padding(
                                    //   padding: EdgeInsets.only(
                                    //       top: 8.0,
                                    //       bottom: 0,
                                    //       left: 8,
                                    //       right: 8),
                                    //   child: Text('Authorization Status',
                                    //       style: TextStyle(
                                    //           color: Colors.white54,
                                    //           fontSize: 12)),
                                    // ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(
                                    //       top: 0.0,
                                    //       bottom: 0,
                                    //       left: 8,
                                    //       right: 8),
                                    //   child: Text(
                                    //       '${data?[index].authorisationStatus}',
                                    //       style: const TextStyle(
                                    //           color: Colors.white,
                                    //           fontSize: 12)),
                                    // ),
                                    // Card(
                                    //   color: Colors.blueGrey.shade900
                                    //       .withOpacity(0.6),
                                    //   child: ExpansionTile(
                                    //     iconColor: Colors.white,
                                    //     collapsedIconColor: Colors.green,
                                    //     title: const Padding(
                                    //       padding: EdgeInsets.only(
                                    //           top: 8.0,
                                    //           bottom: 0,
                                    //           left: 0,
                                    //           right: 8),
                                    //       child: Text('Indication and Use',
                                    //           style: TextStyle(
                                    //               color: Colors.white,
                                    //               fontSize: 16)),
                                    //     ),
                                    //     children: [
                                    //       Padding(
                                    //         padding: const EdgeInsets.only(
                                    //             top: 0.0,
                                    //             bottom: 0,
                                    //             left: 8,
                                    //             right: 8),
                                    //         child: Text(
                                    //           '${data?[index].conditionOrIndication}',
                                    //           overflow: TextOverflow.fade,
                                    //           textAlign: TextAlign.start,
                                    //           style: const TextStyle(
                                    //               fontSize: 12,
                                    //               color: Colors.white70,
                                    //               fontWeight: FontWeight.bold),
                                    //         ),
                                    //       ),
                                    //       Card(
                                    //         color:
                                    //             Colors.black.withOpacity(0.6),
                                    //         child: ExpansionTile(
                                    //           iconColor: Colors.green,
                                    //           collapsedIconColor: Colors.white,
                                    //           title: const Padding(
                                    //             padding: EdgeInsets.only(
                                    //                 top: 8.0,
                                    //                 bottom: 0,
                                    //                 left: 8,
                                    //                 right: 8),
                                    //             child: Text(
                                    //                 'Additional information:',
                                    //                 style: TextStyle(
                                    //                     color: Colors.white54,
                                    //                     fontSize: 12)),
                                    //           ),
                                    //           children: [
                                    //             Column(
                                    //               children: [
                                    //                 Padding(
                                    //                   padding:
                                    //                       const EdgeInsets.only(
                                    //                           top: 0.0,
                                    //                           bottom: 0,
                                    //                           left: 8,
                                    //                           right: 8),
                                    //                   child: Text(
                                    //                       'Product Number: ${data?[index].productNumber}; ATC-Code: ${data?[index].atccode}, Generic? ${data?[index].generic}, Biosimilar? ${data?[index].biosimilar}, Conditional Approval: ${data?[index].conditionalApproval}, Exceptional Circumstances: ${data?[index].exceptionalCircumstances}, Accelerated Assessment: ${data?[index].acceleratedAssessment}, Orphan Medicine: ${data?[index].orphanMedicine}, Marketing Authorization Date: ${data?[index].marketingAuthorisationDate}, Date of Opinion: ${data?[index].dateofOpinion}, Decision Date: ${data?[index].decisionDate}, First Published: ${data?[index].firstPublished}, Revision Date: ${data?[index].revisionDate}, Revision Number: ${data?[index].revisionNumber}, url: ${data?[index].url}',
                                    //                       overflow:
                                    //                           TextOverflow.fade,
                                    //                       textAlign:
                                    //                           TextAlign.start,
                                    //                       style: const TextStyle(
                                    //                           fontSize: 12,
                                    //                           color: Colors
                                    //                               .white70,
                                    //                           fontWeight:
                                    //                               FontWeight
                                    //                                   .bold)),
                                    //                 ),
                                    //               ],
                                    //             ),
                                    //           ],
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
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
                              ),
                            ),
                          )
                        ])));
              },
            );
          }),
    );


  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentmessages
        : messagetosearch.where((messagetosearch) {
      final messagetosearchLower = messagetosearch.toLowerCase();
      final queryLower = query.toLowerCase();

      return messagetosearchLower.startsWith(queryLower);
    }).toList();

    return buildSuggestionSuccess(suggestions);
  }
  Widget buildSuggestionSuccess(List<String> suggestions) => ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        final queryText = suggestion.substring(0, query.length);
        final remainingText = suggestion.substring(query.length);

        return ListTile(
          onTap: () {
            query = suggestion;

            showResults(context);
            // close(context, suggestion);

            // Navigator.push(context, MaterialPageRoute(builder: (context) => (exampleResultsPage(suggestion)),),
            // );


          },
          leading: const Icon(Icons.medication_outlined),
          // title: Text(suggestion),
          title: RichText(
            text: TextSpan(text: queryText,
                style: const TextStyle(color: Colors.black,
                  fontWeight: FontWeight.bold, fontSize: 18,
                ),

                children: [
                  TextSpan(
                    text: remainingText,
                    style: const TextStyle(color: Colors.grey,
                      fontWeight: FontWeight.bold, fontSize: 18,
                    ),

                  )
                ]
            ),
          ),
        );
      }
  );
}
