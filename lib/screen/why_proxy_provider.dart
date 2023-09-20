import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Translations {
  const Translations(this._value);
  final int _value;

  String get title => "You clicked $_value times";
}

class WhyProxyProvider extends StatefulWidget {
  const WhyProxyProvider({super.key});

  @override
  State<WhyProxyProvider> createState() => _WhyProxyProviderState();
}

class _WhyProxyProviderState extends State<WhyProxyProvider> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
      debugPrint("Counter Value == $counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Why Proxy Provider")),
      body: Center(
        child: Provider<Translations>(
          create: (_) => Translations(counter),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ShowTranslations(),
              const SizedBox(height: 20),
              IncreaseButton(increment: increment)
            ],
          ),
        ),
      ),
    );
  }
}

class ShowTranslations extends StatelessWidget {
  const ShowTranslations({super.key});

  @override
  Widget build(BuildContext context) {
    final title = Provider.of<Translations>(context).title;
    return Text(
      title,
      style: const TextStyle(fontSize: 28),
    );
  }
}

class IncreaseButton extends StatelessWidget {
  final VoidCallback increment;
  const IncreaseButton({super.key, required this.increment});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: increment,
      child: const Text(
        "Increase",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
