import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/cat.dart';
import 'package:state_management/models/dog.dart';
import 'package:state_management/provider_overview/provider_overview_07.dart';

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
                Dog(name: "Dog-06", breed: "Breed-06", age: 3)),
        FutureProvider<int>(
          initialData: 0,
          create: (context) {
            final int dogAge = context.read<Dog>().age;
            final cats = Cats(age: dogAge);
            return cats.getCatsAge();
          },
        ),
        StreamProvider<String>(
          initialData: 'Bark 0 times',
          create: (context) {
            final int dogAge = context.read<Dog>().age;
            final cats = Cats(age: dogAge * 2);
            return cats.bark();
          },
        ),
      ],
      child: MaterialApp(
        title: 'State Management with Provider',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ProviderOverview07(),
      ),
    );
  }
}
