import 'package:flutter/material.dart';
import '../models/pet.dart';
import '../models/dog.dart';
import '../models/cat.dart';
import '../models/bird.dart';
import '../interfaces/friendly.dart';

// ============ UI SCREEN ============
class PetListScreen extends StatefulWidget {
  const PetListScreen({super.key});

  @override
  State<PetListScreen> createState() => _PetListScreenState();
}

class _PetListScreenState extends State<PetListScreen> {
  late List<Pet> pets;

  @override
  void initState() {
    super.initState();
    // Create pet instances
    pets = <Pet>[
      Dog("Buddy", 3, "Golden", "Golden Retriever"),
      Cat("Whiskers", 2, "Gray", true),
      Bird("Tweety", 1, "Yellow", "Canary"),
      Dog("Harun", 4, "Black", "German Shepherd"),
      Bird("Zoktay", 2, "Blue", "Lovebird"),
    ];
  }

  Color _getPetColor(Pet pet) {
    if (pet is Dog) return Colors.brown.shade100;
    if (pet is Cat) return Colors.purple.shade100;
    if (pet is Bird) return Colors.blue.shade100;
    return Colors.grey.shade100;
  }

  IconData _getPetIcon(Pet pet) {
    if (pet is Dog) return Icons.pets;
    if (pet is Cat) return Icons.pest_control;
    if (pet is Bird) return Icons.flutter_dash;
    return Icons.pets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smart Pet Manager'),
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: pets.length,
              itemBuilder: (context, index) {
                final pet = pets[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 16),
                  elevation: 4,
                  color: _getPetColor(pet),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              _getPetIcon(pet),
                              size: 40,
                              color: Colors.black87,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                pet.name,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          pet.getInfo(),
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '🔊 Sound: ${pet.makeSound()}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '🏃 Movement: ${pet.move()}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 4),
                        if (pet is Friendly)
                          Text(
                            '❤ Affection: ${(pet as Friendly).showAffection()}',
                            style: const TextStyle(fontSize: 16),
                          ),
                        const SizedBox(height: 8),
                        _buildSpecialBehavior(pet),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.blue.shade700,
            child: Text(
              'Total Number of Pets: ${Pet.totalPets}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialBehavior(Pet pet) {
    if (pet is Dog) {
      return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.orange.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          '🎾 Special: ${pet.fetch()}',
          style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
        ),
      );
    } else if (pet is Cat) {
      return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.pink.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          '✂ Special: ${pet.scratch()}',
          style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
        ),
      );
    } else if (pet is Bird) {
      return Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.cyan.shade100,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          '🪶 Special: ${pet.getWingInfo()}',
          style: const TextStyle(fontSize: 14, fontStyle: FontStyle.italic),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}