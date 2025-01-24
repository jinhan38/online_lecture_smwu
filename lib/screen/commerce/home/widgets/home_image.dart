import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/commerce/assets_path.dart';

class HomeImage extends StatefulWidget {
  const HomeImage({super.key});

  @override
  State<HomeImage> createState() => _HomeImageState();
}

class _HomeImageState extends State<HomeImage> {
  List<String> imageList = [
    AssetsPath.cloth1,
    AssetsPath.cloth2,
    AssetsPath.cloth3,
    AssetsPath.cloth4,
    AssetsPath.cloth5,
    AssetsPath.cloth6,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: PageView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Image.asset(
            imageList[index],
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
