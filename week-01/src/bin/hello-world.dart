import '../lib/about-me.dart';

void main() {
  AboutMe biodata = AboutMe(name: 'Muhammad Ali Zulfikar', age: 20, className: 'TI-3H');

  print('===== About Me =====');
  print('Name: ${biodata.name}');
  print('Age: ${biodata.age}');
  print('Class: ${biodata.className}');
  print('====================');
}