import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack")
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // Positioned 위젯은 Stack 위젯 내부에서 사용 가능
            Positioned(
              top: 30,
              left: 30,
              child: Container(
                color: Colors.purple,
                width: 170,
                height: 170,
              ),
            ),
            Positioned(
              top: 70,
              left: 70,
              child: Container(
                color: Colors.orange,
                width: 160,
                height: 160,
              ),
            ),
            Positioned(
              top: 120,
              left: 120,
              child: Container(
                color: Colors.yellow,
                width: 120,
                height: 120,
              ),
            ),
            Positioned(
              top: 170,
              left: 170,
              child: Container(
                color: Colors.red,
                width: 70,
                height: 70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
