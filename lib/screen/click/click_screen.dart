import 'package:flutter/material.dart';

class ClickScreen extends StatefulWidget {
  const ClickScreen({super.key});

  @override
  State<ClickScreen> createState() => _ClickScreenState();
}

class _ClickScreenState extends State<ClickScreen> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Click"),
      ),
      body: Column(
        children: [
          Text(
            value.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          GestureDetector(
            onTap: () {
              value++;
              setState(() {});
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {
              value++;
              setState(() {});
            },
            customBorder: const CircleBorder(),
            child: const SizedBox(
              width: 100,
              height: 100,
              child: Center(child: Text("InkWell")),
            ),
          ),
          TextButton(
              onPressed: () {
                value++;
                setState(() {});
              },
              style: TextButton.styleFrom(
                /// 글자색, 클릭 효과색 변경
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                fixedSize: const Size(150, 50),
                padding: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    width: 3,
                    color: Colors.red,
                  ),
                ),
              ),
              child: const Text("TextButton")),
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
