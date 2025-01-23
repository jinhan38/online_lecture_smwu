import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class ProviderSecondScreen extends StatelessWidget {
  const ProviderSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<CounterModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("ProviderSecond")),
      body: Column(
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
        ],
      ),
    );
  }
}
