
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'notifier_view_model.dart';

class NotifierSecondScreen extends StatefulWidget {
  const NotifierSecondScreen({super.key});

  @override
  State<NotifierSecondScreen> createState() => _NotifierSecondScreenState();
}

class _NotifierSecondScreenState extends State<NotifierSecondScreen> {
  final NotifierViewModel vm = NotifierViewModel.instance;
  VoidCallback? listener;

  @override
  void initState() {
    listener = () {

      /// notifyListeners() 가 호출되면 진입.
      setState(() {});
    };
    vm.addListener(listener!);
    super.initState();
  }

  @override
  void dispose() {
    vm.removeListener(listener!);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifier"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              vm.count.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                vm.countUp();
              },
              child: Text("Count Up"))
        ],
      ),
    );
  }
}
