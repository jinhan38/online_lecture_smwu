import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/state_management/provider/counter_model.dart';
import 'package:online_lecture_smwu/screen/state_management/provider/provider_second_screen.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              counterModel.count.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              counterModel.countUp();
            },
            child: const Text("Count Up"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const ProviderSecondScreen();
                },
              ));
            },
            child: const Text("화면이동"),
          ),
        ],
      ),
    );
  }
}
