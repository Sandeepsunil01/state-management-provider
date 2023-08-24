import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/dog.dart';

class ProviderOverview08 extends StatefulWidget {
  const ProviderOverview08({super.key});

  @override
  State<ProviderOverview08> createState() => _ProviderOverview08State();
}

class _ProviderOverview08State extends State<ProviderOverview08> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Consumer Overview"),
      ),
      body: Consumer(
        builder: (BuildContext context, Dog dog, Widget? child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                child!,
                const SizedBox(height: 10),
                Text(
                  " - name : ${dog.name}",
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
    return Consumer(builder: (_, Dog dog, __) {
      return Column(
        children: [
          Text(
            " - breed: ${dog.breed}",
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
    return Consumer(builder: (_, Dog dog, __) {
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
              "Grow",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      );
    });
  }
}
