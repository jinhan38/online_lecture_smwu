import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/navigator/navigator_2_screen.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen({super.key});

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator 1"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 24),
          Center(
            child: Text(
              count.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Navigator2Screen(count: count);
              })).then(
                (value) {
                  print('_NavigatorScreenState.build vv : $value');
                  if (value != null && value is int) {
                    count = value;
                    setState(() {});
                  }
                },
              );
            },
            child: Text("1번 화면으로 이동"),
          ),
        ],
      ),
    );
  }
}
