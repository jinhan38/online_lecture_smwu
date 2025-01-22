import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/// 마우스로 드래그 하기 위한 클래스
class CustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
      };
}
