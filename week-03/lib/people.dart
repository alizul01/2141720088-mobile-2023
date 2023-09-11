class Person {
  String name;
  int age;
  MaritalStatus maritalStatus;
  List<Person> friends = [];

  Person({required this.name, required this.age, required this.maritalStatus});

  void introduceYourself() {
    print(
        'Aloha, namaku $name, umurku $age, dan statusku ${maritalStatus.getStatus()}');
  }

  void addFriend(Person person) {
    friends.add(person);
  }

  void listFriends() {
    print('$name memiliki teman-teman berikut:');
    for (var friend in friends) {
      print(friend.name);
    }
  }
}

enum MaritalStatus { single, married }

extension MaritalStatusExtension on MaritalStatus {
  String getStatus() {
    return this == MaritalStatus.single
        ? 'masih jomblo'
        : 'sudah punya pasangan';
  }
}
