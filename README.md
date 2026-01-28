# Smart Pet Manager App 🐾

**BIM493 Assignment #2**  
Batuhan Mert Yücetürk  
Kemal Furkan Saygılı

A modern Flutter application demonstrating Object-Oriented Programming (OOP) principles through an interactive pet management system.

## 📱 About The Project

The Smart Pet Manager is a comprehensive Flutter application that manages and displays a collection of pets with their unique characteristics and behaviors. Users can view 5 different pet instances across 3 pet types (Dogs, Cats, and Birds), each demonstrating distinct sounds, movements, affection displays, and special abilities.

This project serves as a practical demonstration of core Object-Oriented Programming concepts including:
- **Classes & Objects**: Abstract base class with concrete implementations
- **Inheritance**: Hierarchical class structure
- **Abstraction**: Abstract methods and classes
- **Interface Implementation**: Friendly interface for all pets
- **Mixins**: Flyable mixin for birds
- **Encapsulation**: Protected properties and methods
- **Polymorphism**: Method overriding and dynamic behavior

## 🎯 Features

- **Multiple Pet Types**: Display three different pet categories with unique characteristics
  - Dogs: Loyal companions with fetching abilities
  - Cats: Graceful felines with scratching behaviors
  - Birds: Colorful aviators with flight capabilities

- **Pet Information Display**: Each pet shows:
  - Basic info: Name, age, and color
  - Sound: Unique vocalizations for each species
  - Movement: Species-specific locomotion patterns
  - Affection: Emotional expressions through the Friendly interface
  - Special abilities: Unique behaviors (fetching, scratching, flying)

- **Instance Management**: 
  - Five unique pet instances with individual characteristics
  - Static counter tracking total number of pets created
  - Dynamic list view for scalable pet display

- **Modern UI/UX**:
  - Clean, card-based Material Design 3 interface
  - Color-coded pet type cards (brown for dogs, purple for cats, blue for birds)
  - Intuitive icons and emoji indicators
  - Responsive layout with smooth scrolling
  - Bottom banner displaying total pet count

## 🏗 Project Structure

```
lib/
├── main.dart                    # App entry point and MaterialApp configuration
├── interfaces/
│   └── friendly.dart           # Friendly interface for affection behavior
├── mixins/
│   └── flyable.dart           # Flyable mixin providing flight capabilities
├── models/
│   ├── pet.dart               # Abstract base Pet class with common properties
│   ├── dog.dart               # Dog class extending Pet
│   ├── cat.dart               # Cat class extending Pet
│   └── bird.dart              # Bird class extending Pet with Flyable mixin
└── screens/
    └── pet_list_screen.dart   # Main UI screen with ListView of pet cards
```

### Technology Stack

- **Framework**: Flutter (latest stable)
- **Language**: Dart ^3.10.0-282.0.dev
- **UI**: Material Design 3
- **Dependencies**:
  - `cupertino_icons: ^1.0.8` - iOS-style icons
- **Dev Dependencies**:
  - `flutter_lints: ^6.0.0` - Recommended lints for code quality


## 🔧 OOP Concepts Implemented

### 1. **Classes**
- `Pet` (abstract base class) - Defines common pet properties and behaviors
- `Dog`, `Cat`, `Bird` (concrete classes) - Specific implementations for each pet type

### 2. **Objects**
Five unique pet instances are created in the application:
- **Buddy** - 3-year-old Golden Retriever (Dog)
- **Whiskers** - 2-year-old Gray indoor Cat
- **Tweety** - 1-year-old Yellow Canary (Bird)
- **Harun** - 4-year-old Black German Shepherd (Dog)
- **Zoktay** - 2-year-old Blue Lovebird (Bird)

### 3. **Constructors**
- **Default constructors**: `Pet(name, age, color)`
- **Named constructors**: 
  - `Pet.withDefaults()` - Creates pet with default values
  - `Dog.puppy(name, color, breed)` - Creates 1-year-old puppy
  - `Cat.kitten(name, color)` - Creates 1-year-old indoor kitten
  - `Bird.chick(name, species)` - Creates newborn bird with yellow color

### 4. **Inheritance**
- `Dog extends Pet` - Inherits properties and methods from Pet
- `Cat extends Pet` - Inherits properties and methods from Pet
- `Bird extends Pet` - Inherits properties and methods from Pet

### 5. **Abstraction**
- Abstract class `Pet` with abstract methods:
  - `makeSound()` - Must be implemented by all subclasses
  - `move()` - Must be implemented by all subclasses
- Forces all pet types to define their unique behaviors

### 6. **Interface**
- `Friendly` interface implemented by all pet classes
- Requires implementation of `showAffection()` method
- Ensures all pets can express affection in their own way

### 7. **Mixin**
- `Flyable` mixin added to `Bird` class
- Provides `fly()` method returning flight behavior string
- Includes `wingSpan` property (30 cm default)
- Demonstrates code reuse without inheritance

### 8. **Important Keywords**
- **static**: `Pet.totalPets` - Class-level variable tracking all pet instances
- **super**: Used to call parent class constructors and methods
  - Example: `super(name, age, color)` in Dog constructor
  - Example: `super.getInfo()` to extend parent method
- **this**: Used to reference current instance properties
  - Example: `this.name` for accessing instance property
  - Example: `this.breed` for class-specific properties

### 9. **Polymorphism**
- Method overriding: Each pet type overrides `makeSound()`, `move()`, and `getInfo()`
- Runtime polymorphism: List of `Pet` objects can hold different pet types
- Interface implementation: All pets implement `Friendly.showAffection()` differently

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK (^3.10.0 or higher)
- An IDE with Flutter support:
  - Visual Studio Code with Flutter extension
  - Android Studio with Flutter plugin
  - IntelliJ IDEA with Flutter plugin
- A device or emulator for testing:
  - Android device/emulator (for Android)
  - iOS device/simulator (for macOS only)
  - Chrome browser (for web)
  - Desktop environment (for Linux/macOS/Windows)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/batumertoo/Smart-Pet-Manager-App.git
   cd Smart-Pet-Manager-App
   ```

2. **Install Flutter dependencies**
   ```bash
   flutter pub get
   ```

3. **Verify Flutter installation**
   ```bash
   flutter doctor
   ```

4. **Run the application**
   
   For a connected device or default emulator:
   ```bash
   flutter run
   ```
   
   For web browser:
   ```bash
   flutter run -d chrome
   ```
   
   For a specific device:
   ```bash
   flutter devices  # List available devices
   flutter run -d <device-id>
   ```

### Building the App

#### Android APK
```bash
flutter build apk --release
```

#### iOS (macOS only)
```bash
flutter build ios --release
```

#### Web
```bash
flutter build web
```

#### Desktop
```bash
# Linux
flutter build linux

# macOS
flutter build macos

# Windows
flutter build windows
```


## 📸 Application Overview

The application features a modern, scrollable interface with:

### Main Screen Layout
- **App Bar**: "Smart Pet Manager" title with centered alignment
- **Pet Cards**: ListView displaying all pet instances
  - Color-coded backgrounds (brown for dogs, purple for cats, blue for birds)
  - Pet icon and name header
  - Complete pet information
  - Sound, movement, and affection displays
  - Special ability showcase with highlighted background
- **Footer Banner**: Blue banner showing total pet count (static variable)

### User Interface Elements
- **Card Design**: Elevated cards with rounded corners and shadows
- **Icons**: Material Design icons representing each pet type
- **Emojis**: Visual indicators for different behaviors (🔊 for sound, 🏃 for movement, ❤ for affection)
- **Color Scheme**: 
  - Dogs: Brown (Colors.brown.shade100)
  - Cats: Purple (Colors.purple.shade100)
  - Birds: Blue (Colors.blue.shade100)
  - Special abilities: Orange/Pink/Cyan highlighted boxes

## 🐾 Pet Profiles

### 🐕 Dogs

#### Buddy - Golden Retriever
- **Age**: 3 years
- **Color**: Golden
- **Breed**: Golden Retriever
- **Sound**: "Woof! Woof! 🐕"
- **Movement**: Running on four legs
- **Affection**: Wagging tail happily!
- **Special Ability**: Fetching the ball

#### Harun - German Shepherd
- **Age**: 4 years
- **Color**: Black
- **Breed**: German Shepherd
- **Sound**: "Woof! Woof! 🐕"
- **Movement**: Running on four legs
- **Affection**: Wagging tail happily!
- **Special Ability**: Fetching the ball

### 🐱 Cat

#### Whiskers - Indoor Cat
- **Age**: 2 years
- **Color**: Gray
- **Type**: Indoor
- **Sound**: "Meow! Meow! 🐱"
- **Movement**: Silently prowling
- **Affection**: Purring softly!
- **Special Ability**: Scratching the post

### 🐦 Birds

#### Tweety - Canary
- **Age**: 1 year
- **Color**: Yellow
- **Species**: Canary
- **Sound**: "Chirp! Chirp! 🐦"
- **Movement**: Flying high in the sky!
- **Affection**: Singing a beautiful song!
- **Special Ability**: Wingspan of 30 cm

#### Zoktay - Lovebird
- **Age**: 2 years
- **Color**: Blue
- **Species**: Lovebird
- **Sound**: "Chirp! Chirp! 🐦"
- **Movement**: Flying high in the sky!
- **Affection**: Singing a beautiful song!
- **Special Ability**: Wingspan of 30 cm

## 💡 Code Implementation Examples

### Abstract Base Class with Static Variable
```dart
abstract class Pet {
  String name;
  int age;
  String color;
  static int totalPets = 0; // Tracks all pet instances across classes
  
  Pet(this.name, this.age, this.color) {
    totalPets++; // Increment on every instantiation
  }
  
  String makeSound(); // Abstract method - must be implemented
  String move();      // Abstract method - must be implemented
}
```

### Inheritance with Super Keyword
```dart
class Dog extends Pet implements Friendly {
  String breed;
  
  // Using super in default constructor
  Dog(super.name, super.age, super.color, this.breed);
  
  // Named constructor with super
  Dog.puppy(String name, String color, this.breed)
      : super(name, 1, color); // Calls parent constructor
  
  @override
  String getInfo() {
    return "${super.getInfo()}, Breed: $breed"; // Calls parent method
  }
}
```

### This Keyword for Instance Reference
```dart
String fetch() {
  return "${this.name} is fetching the ball!";
}

String scratch() {
  return "${this.name} is scratching the post!";
}
```

### Mixin Implementation
```dart
// Mixin definition
mixin Flyable {
  String fly() => "Flying high in the sky!";
  int wingSpan = 30; // in cm
}

// Using mixin with class
class Bird extends Pet with Flyable implements Friendly {
  String species;
  
  @override
  String move() {
    return fly(); // Uses method from Flyable mixin
  }
  
  String getWingInfo() {
    return "${this.name} has a wingspan of $wingSpan cm";
  }
}
```

### Interface Implementation
```dart
// Interface definition
abstract class Friendly {
  String showAffection();
}

// Implementation in concrete class
class Cat extends Pet implements Friendly {
  @override
  String showAffection() {
    return "Purring softly!";
  }
}
```

### Polymorphism in UI
```dart
// List can hold different pet types
List<Pet> pets = <Pet>[
  Dog("Buddy", 3, "Golden", "Golden Retriever"),
  Cat("Whiskers", 2, "Gray", true),
  Bird("Tweety", 1, "Yellow", "Canary"),
];

// Runtime polymorphism - each pet responds differently
for (var pet in pets) {
  print(pet.makeSound()); // Different output for each type
  print(pet.move());      // Different behavior for each type
}
```


## 📝 Assignment Requirements Checklist

This project fulfills all requirements for BIM493 Mobile Programming I Assignment #2:

### Core OOP Concepts
- ✅ **Classes**: Pet (abstract), Dog, Cat, Bird (concrete classes)
- ✅ **Objects**: Five unique pet instances created (Buddy, Whiskers, Tweety, Harun, Zoktay)
- ✅ **Constructors**: Both default and named constructors implemented
- ✅ **Inheritance**: All pet classes extend the base Pet class
- ✅ **Abstraction**: Abstract Pet class with abstract methods (makeSound, move)
- ✅ **Interface**: Friendly interface implemented by all pet classes
- ✅ **Mixin**: Flyable mixin used by Bird class
- ✅ **Keywords**: 
  - static (Pet.totalPets counter)
  - super (parent constructor/method calls)
  - this (instance property reference)

### UI Requirements
- ✅ **Pet Cards**: Individual cards for each pet with complete information
- ✅ **Total Count Display**: Bottom banner showing total number of pets using static variable
- ✅ **Color Coding**: Different background colors for each pet type
- ✅ **Information Display**: Name, age, color, sound, movement, affection, and special abilities

### Additional Features
- ✅ **Clean Architecture**: Well-organized folder structure
- ✅ **Material Design 3**: Modern UI with elevated cards and proper spacing
- ✅ **Scalability**: ListView.builder for dynamic pet list
- ✅ **Type Safety**: Proper use of Dart type system
- ✅ **Code Quality**: Follows Flutter linting rules

## 🛠 Development

### Project Configuration
- **Project Name**: assignment2
- **SDK Constraint**: ^3.10.0-282.0.dev
- **Material Design**: Version 3 (useMaterial3: true)

### Code Quality Tools
The project uses `analysis_options.yaml` with Flutter lints for maintaining code quality:
- Recommended Flutter linting rules
- Dart analyzer for static analysis
- Ensures consistent code style

### Testing
The project includes a basic test structure in the `test/` directory for future unit and widget tests.
## 🔍 How It Works

### Application Flow

1. **App Initialization** (`main.dart`)
   - `main()` function runs `PetManagerApp`
   - MaterialApp configured with Material Design 3 theme
   - Routes to `PetListScreen` as home screen

2. **Pet Creation** (`pet_list_screen.dart`)
   - Five pet instances created in `initState()`
   - Each instantiation increments `Pet.totalPets` static counter
   - Pets stored in a `List<Pet>` for display

3. **UI Rendering**
   - ListView.builder creates scrollable list of pet cards
   - Each card displays pet information through polymorphic method calls
   - Color coding applied based on runtime type checking (`is Dog`, `is Cat`, `is Bird`)
   - Special behaviors displayed conditionally based on pet type

4. **Polymorphic Behavior**
   - `makeSound()` - Each pet type returns unique sound
   - `move()` - Each pet type has different movement (Bird uses Flyable mixin)
   - `showAffection()` - Each pet implements Friendly interface differently
   - Special methods - Type-specific behaviors (fetch, scratch, wingInfo)

## 🚨 Troubleshooting

### Common Issues and Solutions

**Issue**: `flutter: command not found`
- **Solution**: Ensure Flutter SDK is properly installed and added to PATH
- Run: `export PATH="$PATH:[PATH_TO_FLUTTER]/flutter/bin"`

**Issue**: `Dart SDK version doesn't match`
- **Solution**: Update Flutter SDK
- Run: `flutter upgrade`

**Issue**: Dependencies not resolving
- **Solution**: Clean and reinstall dependencies
```bash
flutter clean
flutter pub get
```

**Issue**: Build errors after cloning
- **Solution**: 
```bash
flutter pub get
flutter pub upgrade
flutter clean
flutter run
```

**Issue**: Emulator not detected
- **Solution**: 
  - Check available devices: `flutter devices`
  - Start emulator from Android Studio/Xcode
  - Or run on web: `flutter run -d chrome`

## 📚 Learning Resources

### Flutter Documentation
- [Flutter Official Documentation](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Flutter Widget Catalog](https://flutter.dev/docs/development/ui/widgets)

### OOP in Dart
- [Dart Classes](https://dart.dev/guides/language/language-tour#classes)
- [Dart Mixins](https://dart.dev/guides/language/language-tour#adding-features-to-a-class-mixins)
- [Dart Inheritance](https://dart.dev/guides/language/language-tour#extending-a-class)

## 🤝 Contributing

This is an academic project created for BIM493 coursework. While it's primarily for educational purposes, suggestions and feedback are welcome.

## 📄 License

This project is created for educational purposes as part of BIM493 Mobile Programming I coursework at the university.

## 👨‍💻 Authors

- **Batuhan Mert Yücetürk**
- **Kemal Furkan Saygılı**

**Course**: BIM493 - Mobile Programming I  
**Assignment**: #2 - Object-Oriented Programming with Flutter

## 🙏 Acknowledgments

- Flutter and Dart development teams for excellent documentation
- BIM493 course instructors for assignment requirements and guidance
- Material Design team for the beautiful UI components
- Open source community for Flutter packages and resources

---

**Note**: This application demonstrates fundamental OOP principles in a practical Flutter context. It serves as a foundation for understanding how object-oriented design patterns work in mobile application development.
