import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_overview/provider_overview_12.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management with Provider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider<Counter>(
        create: (context) => Counter(),
        child: const ProviderOverview12(),
      ),
    );
  }
}
