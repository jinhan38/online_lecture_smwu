import 'package:flutter/cupertino.dart';

class CounterModel with ChangeNotifier {
  int count = 0;

  void countUp() {
    count++;

    /// 리스너들에게 현재 ChangeNotifier 클래스에 에 있는
    /// 변수들의 값이 변경됐다고 알려준다.
    notifyListeners();
  }
}
