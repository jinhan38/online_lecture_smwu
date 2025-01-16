import 'package:flutter/material.dart';

class ListviewPracticeScreen extends StatelessWidget {
  const ListviewPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> dataList = [];
    for (int i = 0; i < 30; i++) {
      dataList.add(i);
    }
    print('dataList : $dataList');

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView 실습"),
      ),
      body: ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          return Container(
            width: 50,
            height: 70,
            alignment: Alignment.center,
            child: Text(
              index.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}
