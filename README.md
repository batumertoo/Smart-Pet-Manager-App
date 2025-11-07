# Smart Pet Manager App - BIM493 Assignment #2
Batuhan Mert Yücetürk 42067670192
Kemal Furkan Saygılı 26923770332

A Flutter application demonstrating Object-Oriented Programming (OOP) principles through a pet management system.

## 📱 About The Project

This Smart Pet Manager app allows users to view different types of pets (Dog, Cat, Bird) and their behaviors including sounds, movements, and special abilities. The project showcases core OOP concepts including classes, inheritance, abstraction, interfaces, and mixins.

## 🎯 Features

- Display three different pet types with unique characteristics
- Each pet shows:
  - Name, age, and color
  - Sound they make
  - Movement behavior
  - Affection display
  - Special unique behavior
- Total pet counter using static variable
- Clean, card-based UI with color-coded pet types

## 🏗 Project Structure


lib/
├── main.dart                    # App entry point
├── interfaces/
│   └── friendly.dart           # Friendly interface
├── mixins/
│   └── flyable.dart           # Flyable mixin for birds
├── models/
│   ├── pet.dart               # Abstract base Pet class
│   ├── dog.dart               # Dog class
│   ├── cat.dart               # Cat class
│   └── bird.dart              # Bird class
└── screens/
    └── pet_list_screen.dart   # Main UI screen


## 🔧 OOP Concepts Implemented

### 1. *Classes*
- Pet (abstract base class)
- Dog, Cat, Bird (concrete classes)

### 2. *Objects*
- Multiple pet instances:
  - Buddy (Golden Retriever Dog)
  - Whiskers (Gray Cat)
  - Tweety (Yellow Canary Bird)

### 3. *Constructors*
- *Default constructors*: Pet(name, age, color)
- *Named constructors*: 
  - Pet.withDefaults()
  - Dog.puppy()
  - Cat.kitten()
  - Bird.chick()

### 4. *Inheritance*
- Dog extends Pet
- Cat extends Pet
- Bird extends Pet

### 5. *Abstraction*
- Abstract class Pet with abstract method makeSound()
- All subclasses must implement makeSound()

### 6. *Interface*
- Friendly interface implemented by all pet classes
- Requires implementation of showAffection() method

### 7. *Mixin*
- Flyable mixin added to Bird class
- Provides fly() method and wingSpan property

### 8. *Keywords*
- **static**: Pet.totalPets - tracks total number of pets across all instances
- **super**: Used to call parent class constructors and methods
- **this**: Used to reference current instance properties

## 🚀 Getting Started

### Prerequisites
- Flutter SDK installed
- Dart SDK installed
- An IDE (VS Code, Android Studio, or IntelliJ IDEA)

### Installation

1. Clone the repository or download the project files

2. Navigate to the project directory:
bash
cd smart_pet_manager


3. Get dependencies:
bash
flutter pub get


4. Run the app:
bash
flutter run


## 📸 Screenshots

The app displays:
- Three pet cards (Dog, Cat, Bird) with different background colors
- Each card shows pet information, sounds, movements, and special behaviors
- Bottom banner showing total number of pets

## 🐾 Pet Types

### 🐕 Dog (Buddy)
- *Breed*: Golden Retriever
- *Sound*: Woof! Woof!
- *Movement*: Running on four legs
- *Special*: Fetching the ball

### 🐱 Cat (Whiskers)
- *Type*: Indoor
- *Sound*: Meow! Meow!
- *Movement*: Silently prowling
- *Special*: Scratching the post

### 🐦 Bird (Tweety)
- *Species*: Canary
- *Sound*: Chirp! Chirp!
- *Movement*: Flying high in the sky
- *Special*: Wingspan information

## 💡 Code Highlights

### Static Variable Usage
dart
static int totalPets = 0; // Tracks all pet instances


### Super Keyword
dart
Dog.puppy(String name, String color, this.breed)
    : super(name, 1, color); // Calls parent constructor


### This Keyword
dart
String fetch() {
  return "${this.name} is fetching the ball!";
}


### Mixin Implementation
dart
class Bird extends Pet with Flyable implements Friendly {
  // Uses fly() method from Flyable mixin
}


## 📝 Assignment Requirements

This project fulfills all requirements for BIM493 Mobile Programming I Assignment #2:

- ✅ Pet, Dog, Cat, Bird classes created
- ✅ Multiple pet instances
- ✅ Default and named constructors
- ✅ Inheritance (subclasses extend base class)
- ✅ Abstraction (abstract Pet class with abstract methods)
- ✅ Interface (Friendly interface)
- ✅ Mixin (Flyable mixin)
- ✅ Keywords (static, super, this)
- ✅ UI with 3 pet cards and total count

## 👨‍💻 Author

*[Your Name]*
- Student ID: [Your Student ID]
- Course: BIM493 Mobile Programming I
- Assignment: #2
- Due Date: November 12, 2025

## 📄 License

This project is created for educational purposes as part of BIM493 coursework.

## 🙏 Acknowledgments

- Flutter Documentation
- Dart Programming Language
- BIM493 Course Materials**
