import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MemberDetailScreen extends StatefulWidget {
  const MemberDetailScreen({
    required this.email,
    required this.dio,
    super.key,
  });

  final String email;
  final Dio dio;

  @override
  State<MemberDetailScreen> createState() => _MemberDetailScreenState();
}

class _MemberDetailScreenState extends State<MemberDetailScreen> {
  final idController = TextEditingController();
  final pwController = TextEditingController();
  final descriptionController = TextEditingController();

  /// api 3개 호출
  /// 1. 특정 계정의 정보 호출 -> initState 함수에서 호출
  /// 2. 정보 업데이트 -> 업데이트 버튼 클릭 시 호출
  /// 3. 삭제 -> 삭제 버튼 클릭 시 호출

  @override
  void initState() {
    idController.text = widget.email;
    widget.dio.post("/api/v1/member/find-one", data: {
      "email": widget.email,
      "password": "qqqq",
    }).then(
      (value) {
        pwController.text = value.data["password"];
        descriptionController.text = value.data["description"];
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    idController.dispose();
    pwController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MemberDetail"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              readOnly: true,
              controller: idController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(hintText: "아이디를 입력해주세요"),
            ),
            TextFormField(
              controller: pwController,
              obscureText: true,
              decoration: const InputDecoration(hintText: "비밀번호를 입력해주세요"),
            ),
            TextFormField(
              controller: descriptionController,
              decoration: const InputDecoration(hintText: "계정 정보를 입력해주세요"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                Response response = await widget.dio.patch("/api/v1/member/update", data: {
                  "email": widget.email,
                  "password": pwController.text,
                  "description": descriptionController.text,
                });
                if (response.statusCode == 200) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("성공"),
                  ));

                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pop(context, true);
                }
              },
              style: ElevatedButton.styleFrom(fixedSize: const Size(double.infinity, 50)),
              child: const Text("업데이트"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(fixedSize: const Size(double.infinity, 50)),
              child: const Text("삭제"),
            ),
          ],
        ),
      ),
    );
  }
}
