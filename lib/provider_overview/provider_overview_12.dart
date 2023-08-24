import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../routes/show_me_counter.dart';

//Provider Access for Anonymous Routes
// Just Wrap the widgets with change notifier and pass in value
class ProviderOverview12 extends StatefulWidget {
  const ProviderOverview12({super.key});

  @override
  State<ProviderOverview12> createState() => _ProviderOverview12State();
}

class _ProviderOverview12State extends State<ProviderOverview12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Provider - Anonymous Route")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChangeNotifierProvider.value(
                      value: context.read<Counter>(),
                      child: const ShowMeCounter(),
                    ),
                  ),
                );
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
