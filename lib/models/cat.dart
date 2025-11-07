import 'pet.dart';
import '../interfaces/friendly.dart';

// ============ CAT CLASS ============
class Cat extends Pet implements Friendly {
  bool isIndoor;

  Cat(super.name, super.age, super.color, this.isIndoor);

  // Named constructor
  Cat.kitten(String name, String color)
      : isIndoor = true,
        super(name, 1, color);

  @override
  String makeSound() {
    return "Meow! Meow! 🐱";
  }

  @override
  String move() {
    return "Silently prowling";
  }

  @override
  String showAffection() {
    return "Purring softly!";
  }

  String scratch() {
    return "${this.name} is scratching the post!";
  }

  @override
  String getInfo() {
    String location = isIndoor ? "Indoor" : "Outdoor";
    return "${super.getInfo()}, Type: $location";
  }
}