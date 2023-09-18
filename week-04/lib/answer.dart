List challenge_1() {
  List list = [8, 9, 8, 7, 8, 5, 9, 10];
  assert(list.length == 8);
  assert(list[2] == 8);
  print(list.length);

  list[1] = 'Ali Zulfikar';
  list[2] = '2141720088';
  return list;
}

void challenge_2() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add('Ali Zulfikar');
  names2.add('2141720088');
  names3.addAll({'a': 2});

  print(names1);
  print(names2);
  print(names3);
}

void challenge_3() {
  var gifts = {'first': 'partridge', 'second': 'turtledoves', 'fifth': 1};

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = <String, String>{};
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = <int, String>{};
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  gifts.addAll({'nama': 'Ali Zulfikar', 'nim': '2141720088'});
  nobleGases.addAll({1: 'Ali Zulfikar', 4: '2141720088'});
  mhs1.addAll({'nama': 'Ali Zulfikar', 'nim': '2141720088'});
  mhs2.addAll({4: 'Ali Zulfikar', 5: '2141720088'});

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}

void challenge_4() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  print(list3.length);

  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var login = 'Manager';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}

void challenge_5() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (String, int) mahasiswa = ("Ali Zulfikar", 2141720088);
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
