import 'package:flutter/material.dart';

class UiExam extends StatefulWidget {
  const UiExam({super.key});

  @override
  State<UiExam> createState() => _UiExamState();
}

class _UiExamState extends State<UiExam> {
  List<String> imageList = [
    "assets/lecture_flutter_image.png",
    "assets/company_responsibility.png",
    "assets/company_sustainability.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            imagePageView(),
            iconList(),
            noticeList(),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("복잡한 UI"),
      centerTitle: true,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,

      /// Scaffold의 body에 스크롤이 들어갈 경우
      /// elevation 값이 있으면 음영이 생긴다.
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
      ],
    );
  }

  Widget imagePageView() {
    return SizedBox(
      height: 200,
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

  Widget iconList() {
    return GridView.count(
      crossAxisCount: 4,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16),
      childAspectRatio: 1.15,
      children: [
        ...List.generate(
          6,
          (index) {
            return TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.local_taxi, size: 40),
                  Text("택시 $index"),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget noticeList() {
    return ListView.builder(
      /// 자식들의 사이즈를 자식 height에 맞게 최소화.
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: Icon(Icons.notifications_none_rounded),
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text("[이벤트] 공지사항입니다."),
          ),
        );
      },
    );
  }
}
