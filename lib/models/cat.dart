// ignore_for_file: public_member_api_docs, sort_constructors_first
class Cats {
  final int age;

  const Cats({
    required this.age,
  });

  Future<int> getCatsAge() async {
    await Future.delayed(const Duration(seconds: 3));

    if (age > 1 && age < 5) {
      return 4;
    } else if (age <= 0) {
      return 1;
    } else {
      return 2;
    }
  }

  Stream<String> bark() async* {
    for (int i = 1; i < age; i++) {
      await Future.delayed(const Duration(seconds: 2));
      yield 'Bark $i times';
    }
  }
}
