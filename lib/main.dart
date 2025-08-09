import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/custom_scroll_behavior.dart';
import 'package:online_lecture_smwu/screen/button_screen.dart';
import 'package:online_lecture_smwu/screen/state_management/provider/counter_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => CounterModel()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ButtonScreen(),
      scrollBehavior: CustomScrollBehavior(),
    );
  }
}
