import 'package:flutter/material.dart';

class ColumnPracticeScreen extends StatelessWidget {
  const ColumnPracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column 실습"),
      ),
      // Container 위젯은 사이즈를 지정하지 않는다면,
      // 가능한 최대로 확장됨
      // min : 사이즈 최소화 -> 자식 위젯의 사이즈 만큼
      // Container에 height 300을 입력하지는 않았지만,
      // MainAxisSize.min 을 입력해줬기 때문에,
      // height 값이 Container에도 같이 적용됨.
      body: Container(
        width: 300,
        color: Colors.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
