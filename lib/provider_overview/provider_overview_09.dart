import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// There may be times when we get Provider Not Found
// There may be 3 possible solutions
// 1. Add the Provider up the widget tree,
// 2. Use Builder instead of child
// 3. Use Consumer instead of direct builder

class ProviderOverview09 extends StatefulWidget {
  const ProviderOverview09({super.key});

  @override
  State<ProviderOverview09> createState() => _ProviderOverview09State();
}

class _ProviderOverview09State extends State<ProviderOverview09> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Consumer Error - (Not Found Provider)")),
      body: ChangeNotifierProvider<Foo>(
        create: (_) => Foo(),
        child: Consumer<Foo>(
            builder: (BuildContext context, Foo foo, Widget? child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  foo.value,
                  style: const TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    foo.changeValue();
                  },
                  child: const Text(
                    "Change Value",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

class Foo with ChangeNotifier {
  String value = "Foo";

  void changeValue() {
    value = value == "Foo" ? "Bar" : "Foo";
    notifyListeners();
  }
}
