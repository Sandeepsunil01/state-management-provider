import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Translations {
  const Translations(this._value);
  final int _value;

  String get title => 'You clicked $_value times';
}

class ProxyProvProxyProv extends StatefulWidget {
  const ProxyProvProxyProv({super.key});

  @override
  State<ProxyProvProxyProv> createState() => _ProxyProvProxyProvState();
}

class _ProxyProvProxyProvState extends State<ProxyProvProxyProv> {
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
        child: MultiProvider(
          providers: [
            ProxyProvider0<int>(update: (_, __) => counter),
            ProxyProvider<int, Translations>(
              update: (_, value, __) => Translations(value),
            ),
          ],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShowTranslations(),
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
    final title = context.watch<Translations>().title;
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
