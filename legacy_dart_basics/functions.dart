void main() {
  printHelloWorld();
  printInfo("Vladimir", 20);
  print(givePi());
  print(addNumbers(2, 3));
}

void printHelloWorld() {
  print("Hello, World!");
}

void printInfo(String name, int age) {
  print("Hello, I am ${name} and I am ${age} years old :)");
}

double givePi() {
  return 3.14;
}

int addNumbers(int a, int b) {
  return a + b;
}
