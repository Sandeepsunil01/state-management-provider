import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/dog.dart';

class ProviderOverview10 extends StatefulWidget {
  const ProviderOverview10({super.key});

  @override
  State<ProviderOverview10> createState() => _ProviderOverview10State();
}

class _ProviderOverview10State extends State<ProviderOverview10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Selector Overview"),
      ),
      body: Selector<Dog, String>(
        selector: (BuildContext context, Dog dog) => dog.name,
        builder: (BuildContext context, String name, Widget? child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                child!,
                const SizedBox(height: 10),
                Text(
                  " - name : $name",
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                const BreedAndAge()
              ],
            ),
          );
        },
        child: const Text(
          "I Like Dogs.",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class BreedAndAge extends StatelessWidget {
  const BreedAndAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<Dog, String>(
        selector: (BuildContext context, Dog dog) => dog.breed,
        builder: (BuildContext context, String breed, Widget? child) {
          return Column(
            children: [
              Text(
                " - breed: $breed",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
              const Age(),
            ],
          );
        });
  }
}

class Age extends StatelessWidget {
  const Age({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<Dog, int>(
      selector: (BuildContext context, Dog dog) => dog.age,
      builder: (BuildContext context, int age, Widget? child) {
        return Column(
          children: [
            Text(
              " - age: $age",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.read<Dog>().grow(),
              child: const Text(
                "Grow",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        );
      },
    );
  }
}
