import 'dart:io';

class Person {

  String name;
  int age;

  // Person(String name, [int age=18]){
  //   this.name = name;
  //   this.age = age;
  // }

  Person(this.name,[this.age = 18]);

  // Named constructor 
  Person.guest() {
    name = 'Guest';
    age = 18;
  }

  void showOutput() {
    print(name);
    print(age);
  }
}

class X {
  final name; // type defined by infrrred value - the values can be modified at runtime
  // Const values are constant from compile time itself, and they must be
  // presided by static keyword. Static keyword has same significane as in other OOP languages.
  static const int val = 10;

  X(this.name);
}

////////// Inheritance ///////////

class Vehicle {
  String model;
  int year;

  Vehicle(this.model,this.year);
  
  void showOutput1(){
    print(this.model);
    print(this.year);
  }

  // method overriding
  void showOutput2() {
    print(model);
  }
}

class Car extends Vehicle {
  double price;

  // include super constructor
  Car(String model, int year, double price): super(model,year);

  // calling superclass method in current class
  // Method overloading
  void showOutput1() {
    super.showOutput1();
    print(price);
  }

  // method override
  @override
  void showOutput2() {
    print(this.model);
  }
}

//////////// Setters and Getters //////////////

class Rectangle {
  num left,top,width,height;
  
  Rectangle(this.left, this.top, this.width, this.height);
  
  // Defining setter and getter properties - right & bottom
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

void main() {
  // Using final and const outside the class
  final name = 'UT';
  const age = 30;
  
  Person p = Person('UT',31);
  p.showOutput();
  var guest = Person.guest();
  guest.showOutput();

  var x = X('UT');
  print(x.name);
  // Value of name now can't be modified

  var rect = Rectangle(3,4,20,15);
  print(rect.left);
  rect.right = 12;
  print(rect.left);

}
