void main(List<String> args) {
  Person me = Person('Vladimir', 20);
  print('${me.name} -> ${me.age}');
}

class Person {
  String name = '';
  int age = 0;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
}
