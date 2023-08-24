import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/dog.dart';

// Only Age Changes but we have set listen to false so we dont face error
class ProviderOverview04 extends StatefulWidget {
  const ProviderOverview04({super.key});

  @override
  State<ProviderOverview04> createState() => _ProviderOverview04State();
}

class _ProviderOverview04State extends State<ProviderOverview04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Notifier with Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              " - name : ${Provider.of<Dog>(context, listen: false).name}",
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
          " - breed: ${Provider.of<Dog>(context, listen: false).breed}",
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
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => Provider.of<Dog>(context, listen: false).grow(),
          child: const Text(
            "Grow",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
