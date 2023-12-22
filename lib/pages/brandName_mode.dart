
import 'package:flutter/material.dart';

import '../api_service_models/brandName_api_model.dart';
import '../api_service_models/innName_api_model.dart';
import '../drugList_call_model/drugList_Model.dart';
import '../drugList_call_model/drugList_brandName_model.dart';
import '../search_models/brandName_search.dart';
import '../search_models/innName_search.dart';

class BrandName extends StatefulWidget {
  const BrandName({super.key});

  @override
  State<BrandName> createState() => _BrandNameState();
}

class _BrandNameState extends State<BrandName> {
  final FetchDrug_brandName _drugList_brandName = FetchDrug_brandName();

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
              showSearch(context: context, delegate: SearchDrug_BrandName());

              // final results = await showSearch(context: context, delegate: SearchDrug());

              // print('Results: $results');
            },
                icon: const Icon(Icons.search))
          ],
        ),
        backgroundColor: Colors.black,
        body: FutureBuilder<List<DrugListBrandName>>(
            future: _drugList_brandName.getDrugList_brandName(query),
            builder: (context, snapshot) {
              var data_brandName = snapshot.data;
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                itemCount: data_brandName?.length,
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
                                  '${data_brandName?[index].category.name}',
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
                                      '${data_brandName?[index].medicineName}',
                                      style: const TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('${data_brandName?[index].innName}',
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
