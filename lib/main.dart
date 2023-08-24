import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/routes/show_me_counter.dart';
import 'provider_overview/provider_overview_13.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Counter _counter = Counter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management with Provider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => ChangeNotifierProvider.value(
            value: _counter, child: const ProviderOverview13()),
        '/counter': (context) => ChangeNotifierProvider.value(
            value: _counter, child: const ShowMeCounter()),
      },
    );
  }

  @override
  void dispose() {
    _counter.dispose();
    super.dispose();
  }
}
