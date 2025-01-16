import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatelessWidget {
  const ListviewBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> al = ["a", "b", "c", "d", "e", "f", "g", "a", "b", "c", "d", "e", "f", "g"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
      ),
      body: ListView.builder(
        itemCount: al.length,
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(30),
            child: Text(
              al[index],
              style: const TextStyle(fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}
