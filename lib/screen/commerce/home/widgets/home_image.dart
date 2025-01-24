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

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: double.infinity,
          child: PageView.builder(
            onPageChanged: (value) {
              selectedIndex = value;
              setState(() {});
            },
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Image.asset(
                imageList[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            imageList.length,
            (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                height: 10,
                width: index == selectedIndex ? 20 : 10,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: index == selectedIndex ? Colors.grey : Colors.grey.shade300,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
