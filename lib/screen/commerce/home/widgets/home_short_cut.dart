import 'package:flutter/material.dart';

class HomeShortCut extends StatelessWidget {
  const HomeShortCut({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16),
      // children: List.generate(length, generator),
    );
  }
}
