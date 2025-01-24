import 'package:flutter/cupertino.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/home_image.dart';
import 'package:online_lecture_smwu/screen/commerce/home/widgets/home_short_cut.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        HomeImage(),
        const SizedBox(height: 30),
        HomeShortCut(),
      ],
    );
  }
}
