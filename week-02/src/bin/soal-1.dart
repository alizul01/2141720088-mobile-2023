import '../lib/person.dart';

void main() {
  Person me = Person(name: 'Muhammad Ali Zulfikar', age: 20, status: false);
  for (int i = 0; i < 15; i++) {
    me.introduceYourself();
  }

  me.changeStatus(true);
}
