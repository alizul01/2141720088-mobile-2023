import 'package:week_03/people.dart';

void main() {
  var ali = Person(name: 'Ali Zulfikar', age: 20, maritalStatus: MaritalStatus.single);
  var tio = Person(name: 'Tio Irawan', age: 20, maritalStatus: MaritalStatus.married);
  var rezky = Person(name: 'Bagus Rezky', age: 20, maritalStatus: MaritalStatus.single);

  ali.addFriend(tio);
  ali.addFriend(rezky);

  ali.introduceYourself();
  ali.listFriends();

  tio.introduceYourself();
}

