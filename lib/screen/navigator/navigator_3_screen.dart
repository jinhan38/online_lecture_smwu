import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/navigator/navigator_1_screen.dart';

class Navigator3Screen extends StatefulWidget {
  const Navigator3Screen({super.key});

  @override
  State<Navigator3Screen> createState() => _Navigator3ScreenState();
}

class _Navigator3ScreenState extends State<Navigator3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator 3"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("이전 화면으로 이동"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.popUntil(context, (route) {
                return route is MaterialPageRoute && route.builder(context) is NavigatorScreen;
              });
            },
            child: const Text("1번 화면으로 이동"),
          ),
        ],
      ),
    );
  }
}
