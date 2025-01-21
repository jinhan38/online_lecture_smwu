import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'member_model.dart';

class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  Dio dio = Dio(BaseOptions(baseUrl: "https://244b-110-8-126-227.ngrok-free.app"));
  bool loading = true;
  List<MemberModel> dataList = [];

  /// 1. 멤버 목록 호출
  /// 1-1. 멤버 목록 호출할 때 loading UI 표출
  /// 2. 멤버 목록 ListView로 출력(데이터 파싱)
  /// 3. 멤버 목록 중 하나 클릭 했을 때 화면 이동
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future<void> getData() async {
    Response response = await dio.get("/api/v1/member/all");

    /// as : 캐스팅
    /// Iterable : 반복적인 형태의 데이터
    /// element : {"email": "jinhan40@naver.com", "description": ""}
    /// value["email"] ?? "" : ?? 앞의 값이 null이라면 뒤의 값을 입력하세요.
    // dataList = (response.data as Iterable).map(
    //   (element) {
    //     Map<String, String> value = element as Map<String, String>;
    //     return MemberModel(
    //       value["email"] ?? "",
    //       value["description"] ?? "",
    //     );
    //   },
    // ).toList();

    // Unhandled Exception: type 'List<dynamic>' is not a subtype of type 'List<MemberModel>' 오류 발생
    dataList = response.data
        .map<MemberModel>(
          (e) => MemberModel(
            e["email"] ?? "",
            e["description"] ?? "",
          ),
        )
        .toList();

    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MemberList"),
      ),
      body: loading
          ? CircularProgressIndicator()
          : SingleChildScrollView(
              child: Column(
                children: [
                  Text(dataList.toString()),
                ],
              ),
            ),
    );
  }
}
