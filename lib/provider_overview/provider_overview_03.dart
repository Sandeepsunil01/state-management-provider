import 'package:flutter/material.dart';
import 'package:state_management/models/dog.dart';

// This withour the use of Provider UI wont rebuild
class ProviderOverview03 extends StatefulWidget {
  const ProviderOverview03({super.key});

  @override
  State<ProviderOverview03> createState() => _ProviderOverview03State();
}

class _ProviderOverview03State extends State<ProviderOverview03> {
  final dog = Dog(name: "Dog3", breed: "breed03");

  @override
  void initState() {
    super.initState();
    dog.addListener(dogListener);
  }

  void dogListener() {
    debugPrint("Dog Age form Listener : ${dog.age}");
  }

  @override
  void dispose() {
    dog.removeListener(dogListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Notifier without Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              " - name : ${dog.name}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            BreedAndAge(dog: dog)
          ],
        ),
      ),
    );
  }
}

class BreedAndAge extends StatelessWidget {
  final Dog dog;
  const BreedAndAge({super.key, required this.dog});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          " - breed: ${dog.breed}",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        Age(dog: dog),
      ],
    );
  }
}

class Age extends StatelessWidget {
  final Dog dog;
  const Age({super.key, required this.dog});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          " - age: ${dog.age}",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => dog.grow(),
          child: const Text(
            "Gow",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
