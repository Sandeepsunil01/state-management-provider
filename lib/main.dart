import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/dog.dart';
import 'provider_overview/provider_overview_10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Dog>(
            create: (context) =>
                Dog(name: "Dog-10", breed: "Breed-10", age: 5)),
      ],
      child: MaterialApp(
        title: 'State Management with Provider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ProviderOverview10(),
      ),
    );
  }
}
