import 'package:flutter/material.dart';

class NotifierViewModel with ChangeNotifier {
  static final NotifierViewModel _singleton = NotifierViewModel._single();

  factory NotifierViewModel() {
    return _singleton;
  }

  NotifierViewModel._single();

  void update() => notifyListeners();

  int count = 0;

  void countUp(){
    count++;
    notifyListeners();
  }

}