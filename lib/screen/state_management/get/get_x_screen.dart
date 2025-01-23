import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_lecture_smwu/screen/state_management/get/get_x_second_screen.dart';
import 'package:online_lecture_smwu/screen/state_management/get/my_controller.dart';

class GetXScreen extends StatefulWidget {
  const GetXScreen({super.key});

  @override
  State<GetXScreen> createState() => _GetXScreenState();
}

class _GetXScreenState extends State<GetXScreen> {
  @override
  void initState() {
    MyController.setController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Obx(() {
            return Center(
              child: Text(
                MyController.to.count.value.toString(),
                style: const TextStyle(fontSize: 20),
              ),
            );
          }),
          ElevatedButton(
            onPressed: () {
              MyController.to.countUp();
            },
            child: const Text("Count up"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const GetXSecondScreen();
                },
              ));
            },
            child: const Text("화면 이동"),
          ),
        ],
      ),
    );
  }
}
