
import 'package:drugitudeleviosa/drugList_call_model/drugList_therapueticArea_Model.dart';
import 'package:drugitudeleviosa/search_models/therapuetic_area_search.dart';
import 'package:flutter/material.dart';
import '../api_service_models/therapureticArea_api_model.dart';
import '../drugList_call_model/drugList_brandName_model.dart';


class TherapueticArea extends StatefulWidget {
  const TherapueticArea({super.key});

  @override
  State<TherapueticArea> createState() => _TherapueticAreaState();
}

class _TherapueticAreaState extends State<TherapueticArea> {
  final FetchDrug_therapueticArea _drugList_therapueticArea = FetchDrug_therapueticArea();

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
          title: Row(
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
              showSearch(context: context, delegate: SearchDrug_TherapueticArea());

              // final results = await showSearch(context: context, delegate: SearchDrug());

              // print('Results: $results');
            },
                icon: const Icon(Icons.search))
          ],
        ),
        backgroundColor: Colors.black,
        body: FutureBuilder<List<DrugListTherapueticArea>>(
            future: _drugList_therapueticArea.getDrugList_therapueticArea(query),
            builder: (context, snapshot) {
              var data_therapueticArea = snapshot.data;
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                itemCount: data_therapueticArea?.length,
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
                                  '${data_therapueticArea?[index].category.name}',
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
                                      '${data_therapueticArea?[index].medicineName}',
                                      style: const TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('${data_therapueticArea?[index].innName}',
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
