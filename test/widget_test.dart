import 'collections.dart';

void main() {
  Collections collections = Collections();
  collections.practiceSet();
}

void variableTest() {
  String name = "김진한";
  print(name);

  double weight = 70;
  print(weight);

  int age = 34;
  print(age);

  bool b = true;
  b = false;
  print(b);

  var name2 = "김진한";

  /// dynamic을 많이 사용하지는 않음
  dynamic name3 = "jinhan";
  name3 = 1;
  name3 = false;
  print(name3);

  // 상수를 final, const
  const name5 = "휘건";

  int? age2 = null;
  // int? age2 ;
  age2 = 1;
}
