// ============ ABSTRACT BASE CLASS ============
abstract class Pet {
  String name;
  int age;
  String color;
  static int totalPets = 0; // Static variable to track total pets

  // Default constructor
  Pet(this.name, this.age, this.color) {
    totalPets++; // Increment static counter
  }

  // Named constructor
  Pet.withDefaults({this.name = "Unknown", this.age = 0, this.color = "Brown"}) {
    totalPets++;
  }

  // Abstract method
  String makeSound();

  // Concrete method
  String getInfo() {
    return "Name: $name, Age: $age, Color: $color";
  }

  String move();
}