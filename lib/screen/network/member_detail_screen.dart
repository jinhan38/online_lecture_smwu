import 'package:flutter/material.dart';

class MemberDetailScreen extends StatefulWidget {
  const MemberDetailScreen({required this.email, super.key});

  final String email;

  @override
  State<MemberDetailScreen> createState() => _MemberDetailScreenState();
}

class _MemberDetailScreenState extends State<MemberDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MemberDetail"),
      ),
    );
  }
}
