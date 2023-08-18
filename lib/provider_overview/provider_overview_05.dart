import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/dog.dart';

class ProviderOverview05 extends StatefulWidget {
  const ProviderOverview05({super.key});

  @override
  State<ProviderOverview05> createState() => _ProviderOverview05State();
}

class _ProviderOverview05State extends State<ProviderOverview05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Extension Menthod"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              " - name : ${context.watch<Dog>().name}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            const BreedAndAge()
          ],
        ),
      ),
    );
  }
}

class BreedAndAge extends StatelessWidget {
  const BreedAndAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          " - breed: ${context.select<Dog, String>((Dog dog) => dog.breed)}",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 10),
        const Age(),
      ],
    );
  }
}

class Age extends StatelessWidget {
  const Age({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          " - age: ${context.select<Dog, int>((Dog dog) => dog.age)}",
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => context.read<Dog>().grow(),
          child: const Text(
            "Gow",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
