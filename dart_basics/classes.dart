void main(List<String> args) {
  // Person me = Person('Vladimir', 20);
  Person me = Person(name: 'Vladimir', age: 20);
  print('${me.name} -> ${me.age}');
  Person young = Person.young('Young');
  print('${young.name} -> ${young.age}');
}

class Person {
  String? name;
  int? age;

  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }

  // Person({@required String? name, int? age}) {
  //   this.name = name;
  //   this.age = age;
  // }

  // Person({String? name, int? age}) {
  //   this.name = name;
  //   this.age = age;
  // }

  Person({this.name, this.age}) {}

  Person.young(this.name) {
    age = 16;
  }
}
