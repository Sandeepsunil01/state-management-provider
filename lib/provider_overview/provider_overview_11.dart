import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// There may be times when we get Provider Not Found
// There may be 3 possible solutions
// 1. Use child with proper context
// 2. Wrap the widet with a builder

class ProviderOverview11 extends StatefulWidget {
  const ProviderOverview11({super.key});

  @override
  State<ProviderOverview11> createState() => _ProviderOverview11State();
}

class _ProviderOverview11State extends State<ProviderOverview11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Selector Error - (Not Found Provider)")),
      body: ChangeNotifierProvider<Counter>(
        create: (_) => Counter(),
        child: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${context.watch<Counter>().counter}",
                    style: const TextStyle(fontSize: 40),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.read<Counter>().increment();
                    },
                    child: const Text(
                      "Increment",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            );
          },
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
