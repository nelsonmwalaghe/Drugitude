
import 'package:drugitudeleviosa/drugList_call_model/drugList_pharmaceutical_group_model.dart';
import 'package:drugitudeleviosa/search_models/pharmaceutical_group_search.dart';
import 'package:flutter/material.dart';
import '../api_service_models/pharmaceuticalGroup_api_model.dart';


class PhramGroup extends StatefulWidget {
  const PhramGroup({super.key});

  @override
  State<PhramGroup> createState() => _PhramGroupState();
}

class _PhramGroupState extends State<PhramGroup> {
  final FetchDrug_phramGroup _drugList_phramGroup = FetchDrug_phramGroup();

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
              showSearch(context: context, delegate: SearchDrug_PhramGroup());

              // final results = await showSearch(context: context, delegate: SearchDrug());

              // print('Results: $results');
            },
                icon: const Icon(Icons.search))
          ],
        ),
        backgroundColor: Colors.black,
        body: FutureBuilder<List<DrugListPharmGroup>>(
            future: _drugList_phramGroup.getDrugList_phramGroup(query),
            builder: (context, snapshot) {
              var data_phramGroup = snapshot.data;
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                itemCount: data_phramGroup?.length,
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
                                  '${data_phramGroup?[index].category.name}',
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
                                      '${data_phramGroup?[index].medicineName}',
                                      style: const TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('${data_phramGroup?[index].innName}',
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
