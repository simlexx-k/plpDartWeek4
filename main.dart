// Step 1: Define classes with inheritance
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('Some generic sound');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('Woof!');
  }
}

// Step 2: Implement an interface
abstract class Movable {
  void move();
}

class Car implements Movable {
  @override
  void move() {
    print('Car is moving');
  }
}

// Step 3: Override a method
class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('Meow!');
  }
}

// Step 4: Initialize instance with data from file
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(json['name'], json['age']);
  }
}

void main() {
  // Step 5: Demonstrate loop
  List<Animal> animals = [Dog('Buddy'), Cat('Whiskers')];
  for (var animal in animals) {
    animal.makeSound();
  }

  // Initializing instance from file data (simulate reading from a file)
  Map<String, dynamic> jsonData = {'name': 'Alice', 'age': 30};
  var person = Person.fromJson(jsonData);
  print('Person name: ${person.name}, age: ${person.age}');
}
