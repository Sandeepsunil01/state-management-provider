import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderOverview13 extends StatefulWidget {
  const ProviderOverview13({super.key});

  @override
  State<ProviderOverview13> createState() => ProviderOverview13State();
}

class ProviderOverview13State extends State<ProviderOverview13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Provider - Named Route")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/counter");
              },
              child: const Text(
                "Show Me Counter",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<Counter>().increment();
              },
              child: const Text("Increment Counter"),
            ),
          ],
        ),
      ),
    );
  }
}

class Counter with ChangeNotifier {
  int counter = 0;

  void increment() {
    counter++;
    notifyListeners();
  }
}
