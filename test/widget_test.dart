import 'collections.dart';
import 'oop/person.dart';
import 'oop/product.dart';

void main() {
  // Collections collections = Collections();
  // collections.practiceSet();

  Person person1 = Person("김진한", 34, 70.0);
  print('person1 : $person1');

  String talk1 = person1.talk("김휘건");
  print(talk1);

  /// Person List 변수를 만드세요.
  /// 변수에 Person 클래스 3개를 추가하세요.
  List<Person> personList = [];
  personList.add(Person("이름1", 30, 60));
  personList.add(Person("이름2", 40, 80));
  personList.add(Person("이름3", 50, 70));

  var talk2 = personList[1].talk(personList[0].name);
  print(talk2);

  Product(name: "라떼", company: "스타벅스", price: 3000);

  // var product = Product("아메리카노", "스타벅스");
  // print(product);
  // product.sale();
  // product.sale();
  // print(product);
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
