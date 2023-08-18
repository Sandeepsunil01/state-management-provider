import 'package:flutter/material.dart';

// class Dog {
//   final String name;
//   final String breed;
//   int age;

//   Dog({
//     required this.name,
//     required this.breed,
//     this.age = 1,
//   });

//   void grow() {
//     age++;
//     debugPrint("Age == $age");
//   }
// }

class Dog with ChangeNotifier {
  final String name;
  final String breed;
  int age;

  Dog({
    required this.name,
    required this.breed,
    this.age = 1,
  });

  void grow() {
    age++;
    notifyListeners();
    debugPrint("Age == $age");
  }
}
