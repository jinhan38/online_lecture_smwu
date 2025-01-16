class Collections {
  /// List, Map, Set

  void listPractice() {}

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
}
