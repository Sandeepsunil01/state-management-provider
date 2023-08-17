import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/dog.dart';
import 'provider_overview/provider_overview_02.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<Dog>(
      create: (context) => Dog(name: "Tommy", breed: "Bulldog", age: 3),
      child: MaterialApp(
        title: 'State Management with Provider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ProviderOverview02(),
      ),
    );
  }
}
