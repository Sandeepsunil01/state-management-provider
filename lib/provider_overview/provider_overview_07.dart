import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/dog.dart';

//This is a Stream Provider. Data updates every 2 seconds
// Bark Data updates every 2 seconds
class ProviderOverview07 extends StatefulWidget {
  const ProviderOverview07({super.key});

  @override
  State<ProviderOverview07> createState() => _ProviderOverview07State();
}

class _ProviderOverview07State extends State<ProviderOverview07> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Provider"),
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
        Text(' - ${context.watch<String>()}',
            style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 20),
        Text(
            " - number of Cats: ${context.watch<int>()}", //if you use read instead of watch then value dont updates automatically
            style: const TextStyle(
                fontSize: 20)), //Thus is How Future Provider is Implemented
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
  }
}
