class Person {
  String name;
  int age;
  Person(this.name, this.age);
}

extension PersonsExtensions on Person {
  String greet() {
    return "Hello my name is $name and I am $age years old.";
  }
}

void main() {
  Person person = Person('Harish', 28);

  print(person.greet());
}
