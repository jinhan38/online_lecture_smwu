import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextScreen extends StatelessWidget {
  const TextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: const Column(
        children: [
          Text(
            "Flutter\nText 위젯",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
              letterSpacing: 10,
              height: 1.1,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, 텍스트 위젯 길이 확인, ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
