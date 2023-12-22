
import 'package:flutter/material.dart';

import '../api_service_models/innName_api_model.dart';
import '../drugList_call_model/drugList_Model.dart';
import '../search_models/innName_search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final FetchDrug _drugList = FetchDrug();

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
              showSearch(context: context, delegate: SearchDrug());

              // final results = await showSearch(context: context, delegate: SearchDrug());

              // print('Results: $results');
            },
                icon: const Icon(Icons.search))
          ],
        ),
        backgroundColor: Colors.black,
        body: FutureBuilder<List<DrugList>>(
            future: _drugList.getDrugList(query),
            builder: (context, snapshot) {
              var data = snapshot.data;
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                itemCount: data?.length,
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
                                  '${data?[index].category.name}',
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
                                      '${data?[index].medicineName}',
                                      style: const TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('${data?[index].innName}',
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
