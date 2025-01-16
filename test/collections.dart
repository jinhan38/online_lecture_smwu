class Collections {
  /// List, Map, Set

  void listPractice() {
    List<String> animalList = [];
    animalList.addAll(["강아지", "고양이", "양", "닭", "사자"]);
    animalList.removeAt(1);
    print(animalList);
  }

  void mapPractice() {
    Map<String, int> nameMap = {};
    nameMap.addAll({"김진한": 34, "함혜원": 35, "김휘건": 2});
    // nameMap.remove("함혜원");
    nameMap.removeWhere(
      (key, value) {
        return key == "함혜원";
      },
    );
    print(nameMap);
  }

  void practiceSet() {
    Set<String> nationSet = {"한국", "일본", "중국", "베트남", "러시아"};
    nationSet.removeWhere((e) => e == "한국");
    print(nationSet);
  }

  void listAdd() {
    int age = 34;
    List<int> ageList = [];
    ageList.add(age);
    print("add 1 : $ageList");
    ageList.add(age);
    print("add 2 : $ageList");

    ageList.addAll([1, 3, 4, 5, 6, 7, 8, 9]);
    print("add 3 : $ageList");

    ageList.insert(0, 100);
    print("add 4 : $ageList");
  }

  void listRemove() {
    List<String> nameList = [];
    nameList.addAll(["김진한", "홍길동", "고유진", "정채영", "손세민"]);

    nameList.removeLast();
    nameList.removeAt(1);
    print("listRemove : $nameList");
    nameList.remove("김진한");
    print("listRemove 2: $nameList");
    nameList.clear();
    print("listRemove 3: $nameList");
  }

  void listController() {
    List<int> ageList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    print("listController 1 : ${ageList.length}");

    int ageFirst = ageList.first;
    int ageLast = ageList.last;
    print("ageFirst : $ageFirst, ageLast : $ageLast");

    int ageFour = ageList[3];
    print("ageFour : $ageFour");
  }

  void collectionMap() {
    Map<String, int> nameAgeMap = {};
    nameAgeMap["김진한"] = 34;
    print(nameAgeMap);

    Map<String, dynamic> dynamicMap = {};
    dynamicMap["a"] = 1;
    dynamicMap["b"] = "고양이";
    dynamicMap["c"] = true;
    print(dynamicMap);
    print("get dynamicMap : ${dynamicMap["b"]}");
    dynamicMap.remove("c");
    print("remove dynamicMap : $dynamicMap");
    dynamicMap.length;
    dynamicMap.clear();
  }

  void collectionSet() {
    Set ss = {};
    ss.add("a");
    ss.add(1);
    print("collectionSet 1 : $ss");

    ss.remove("a");
    print("collectionSet 2 : $ss");
  }
}
