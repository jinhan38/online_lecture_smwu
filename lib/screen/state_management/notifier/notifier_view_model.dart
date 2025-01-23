import 'package:flutter/material.dart';

class NotifierViewModel with ChangeNotifier {

  /// static 인스턴스 생성
  static final NotifierViewModel instance = NotifierViewModel();

  int count = 0;

  void countUp(){
    count++;
    notifyListeners();
  }

}