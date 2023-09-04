class Person {
  String name;
  int age;
  bool status;

  Person({required this.name, required this.age, required this.status});

  void introduceYourself() {
    print(
        'Aloha, namaku $name, umurku $age, dan statusku ${status ? 'sudah punya pasangan' : 'masih jomblo'}');
  }

  void changeStatus(bool newStatus) {
    status = newStatus;
    if (status) {
      print('$name sudah punya pasangan.');
    } else {
      print('$name masih jomblo.');
    }
  }
}
