import 'pet.dart';
import '../interfaces/friendly.dart';
import '../mixins/flyable.dart';

// ============ BIRD CLASS WITH MIXIN ============
class Bird extends Pet with Flyable implements Friendly {
  String species;

  Bird(super.name, super.age, super.color, this.species);

  // Named constructor
  Bird.chick(String name, String species)
      : this.species = species,
        super.withDefaults(name: name, age: 0, color: "Yellow");

  @override
  String makeSound() {
    return "Chirp! Chirp! 🐦";
  }

  @override
  String move() {
    // Using mixin method
    return fly();
  }

  @override
  String showAffection() {
    return "Singing a beautiful song!";
  }

  String getWingInfo() {
    return "${this.name} has a wingspan of $wingSpan cm";
  }

  @override
  String getInfo() {
    return "${super.getInfo()}, Species: $species";
  }
}