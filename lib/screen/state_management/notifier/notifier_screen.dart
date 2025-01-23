import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/state_management/notifier/notifier_view_model.dart';

class NotifierScreen extends StatefulWidget {
  const NotifierScreen({super.key});

  @override
  State<NotifierScreen> createState() => _NotifierScreenState();
}

class _NotifierScreenState extends State<NotifierScreen> {
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
