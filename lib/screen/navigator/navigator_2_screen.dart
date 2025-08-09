import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/navigator/navigator_3_screen.dart';

class Navigator2Screen extends StatefulWidget {
  const Navigator2Screen({required this.count, super.key});

  final int count;

  @override
  State<Navigator2Screen> createState() => _Navigator2ScreenState();
}

class _Navigator2ScreenState extends State<Navigator2Screen> {
  int count = 0;

  @override
  void initState() {
    super.initState();
    count = widget.count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator 2"),
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
              count++;
              setState(() {});
            },
            child: const Text("Count Up"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("뒤로가기"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, count);
            },
            child: const Text("뒤로가기(숫자 전달)"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const Navigator3Screen();
                },
              ));
            },
            child: const Text("다음 화면"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return const Navigator3Screen();
                },
              ));
            },
            child: const Text("다음 화면(현재 화면 제거)"),
          ),
        ],
      ),
    );
  }
}
