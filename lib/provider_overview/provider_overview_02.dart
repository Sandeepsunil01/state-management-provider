import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/dog.dart';

// Dependency Injections
class ProviderOverview02 extends StatefulWidget {
  const ProviderOverview02({super.key});

  @override
  State<ProviderOverview02> createState() => _ProviderOverview02State();
}

class _ProviderOverview02State extends State<ProviderOverview02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency Injection"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              " - name : ${Provider.of<Dog>(context).name}",
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
          " - breed: ${Provider.of<Dog>(context).breed}",
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
          " - age: ${Provider.of<Dog>(context).age}",
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
