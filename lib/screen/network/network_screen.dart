import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/network/member_list_screen.dart';

import 'member_register_screen.dart';

class NetworkScreen extends StatefulWidget {
  const NetworkScreen({super.key});

  @override
  State<NetworkScreen> createState() => _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen> {
  /// 회원 전체 조회
  /// 회원 가입
  /// 회원 한개 조회
  /// 회원 삭제
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Network"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MemberRegisterScreen();
                  },
                ));
              },
              child: Text("회원가입")),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const MemberListScreen();
                  },
                ));
              },
              child: Text("회원가입")),
        ],
      ),
    );
  }
}
