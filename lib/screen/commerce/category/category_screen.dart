import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<String> fashion = [
    "여성의류",
    "남성의류",
    "수입명품",
    "신발",
    "가방/지갑",
    "신생아/유아",
    "디자이너샵",
  ];
  List<String> food = [
    "농산물",
    "축산",
    "수산",
    "반찬",
    "과자/간식",
    "건강식품",
    "주류",
  ];
  List<String> living = [
    "주방가전",
    "생활가전",
    "영상/음향",
    "공기청정",
    "노트북/PC",
    "카메라",
    "휴대폰/태블릿",
  ];
  List<String> beauty = [
    "명품화장품",
    "스킨케어",
    "선케어",
    "클렌징",
    "헤어케어",
    "바디케어",
    "미용/헤어기기",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          expansionTile("패션", fashion),
        ],
      ),
    );
  }

  Widget expansionTile(String title, List<String> items) {
    return Theme(
      data: ThemeData().copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Text(title),
        children: List.generate(
          items.length,
          (index) {
            return Text(items[index]);
          },
        ),
      ),
    );
  }
}
