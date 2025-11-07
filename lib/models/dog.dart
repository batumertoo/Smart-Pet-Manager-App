import 'pet.dart';
import '../interfaces/friendly.dart';

// ============ DOG CLASS ============
class Dog extends Pet implements Friendly {
  String breed;

  // Using super keyword in constructor
  Dog(super.name, super.age, super.color, this.breed);

  // Named constructor using super
  Dog.puppy(String name, String color, this.breed)
      : super(name, 1, color);

  @override
  String makeSound() {
    return "Woof! Woof! 🐕";
  }

  @override
  String move() {
    return "Running on four legs";
  }

  @override
  String showAffection() {
    return "Wagging tail happily!";
  }

  String fetch() {
    // Using this keyword
    return "${this.name} is fetching the ball!";
  }

  @override
  String getInfo() {
    // Using super keyword to call parent method
    return "${super.getInfo()}, Breed: $breed";
  }
}