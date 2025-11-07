import 'package:flutter/material.dart';
import 'models/pet.dart';
import 'models/dog.dart';
import 'models/cat.dart';
import 'models/bird.dart';
import 'screens/pet_list_screen.dart';

void main() {
  runApp(const PetManagerApp());
}

class PetManagerApp extends StatelessWidget {
  const PetManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Pet Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const PetListScreen(),
    );
  }
}