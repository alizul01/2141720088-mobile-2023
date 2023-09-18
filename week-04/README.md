# Week 04 - Condition and Looping

## Task's

### Challenge 1

Untuk list variable sendiri, apabila di awal sudah terdefinisi hanya int maka jika seterusnya
apabila ingin diganti di luar inisialisasi akan terjadi error

```dart
List challenge_1() {
  var list = [8, 9, 8, 7, 8, 5, 9, 10];
  assert(list.length == 8);
  assert(list[2] == 8);
  print(list.length);

  list[1] = 'Ali Zulfikar'; // Error
  list[2] = '2141720088'; // Error
  return list;
}
```

Untuk memperbaikinya dapat dibuat demikian
(diganti List)

```dart
List challenge_1() {
  List list = [8, 9, 8, 7, 8, 5, 9, 10];
  assert(list.length == 8);
  assert(list[2] == 8);
  print(list.length);

  list[1] = 'Ali Zulfikar';
  list[2] = '2141720088';
  return list;
}
```

### Challenge 02

Eksperimen data set

```dart
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
```

Add digunakan untuk menambah sebuah value ke dalam sebuah list / set karena variable tersebut
bersifat dinamis

### Challenge 03

```dart
void challenge_3() {
  var gifts = {'first': 'partridge', 'second': 'turtledoves', 'fifth': 1};

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = <String, String>{};
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = <int, String>{};
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
}
```

Untuk penambahan nama dan NIM sesuai dengan challenge yang diberikan, saya menggunakan addAll untuk
menambah sebuah value yang memiliki key value pair

```dart
void challenge_3() {
  // ...

  gifts.addAll({'nama': 'Ali Zulfikar', 'nim': '2141720088'});
  nobleGases.addAll({1: 'Ali Zulfikar', 4: '2141720088'});
  mhs1.addAll({'nama': 'Ali Zulfikar', 'nim': '2141720088'});
  mhs2.addAll({4: 'Ali Zulfikar', 5: '2141720088'});

  // ...
}
```

![img.png](docs/foto-1.png)

### Challenge 04

Akan terjadi error pada variable list1 karena belum ditambahkan deklarasi `var`

```dart
void challenge_04() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  print(list3.length);
}
```

Pada langkah selanjutnya menggunakan sebuah pengkondisian di dalam sebuah list, hal tersebut error
karena promoActive belum diinisialisasikan

```dart
void challenge_04() {
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
```

Langkah selanjutnya juga demikian, untuk memperbaiki perlu variable `login` terlebih dahulu

```dart
void challenge_04() {
  var login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);
}
```

Terakhir adalah pemanfaatan for di dalam sebuah list, tentu for dalam sebuah list ini untuk
mempersingkat kode yang harusnya dalam beberapa baris bisa menjadi 1 baris saja

```dart
void challenge_04() {
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
```

Output

![img.png](docs/challenge-04.png)

### Challenge 05

Pada tahap pertama dilakukan sebuah pembuatan Records

```dart
void challenge_5() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
}
```

Didapatkan bahwa tidak terjadi error, kode di atas bertujuan untuk membuat sebuah records dengan
nama variable `record`

Output

![img.png](docs/output-05.png)

```dart
void challenge_5() {
  (String, int) mahasiswa;
  print(mahasiswa);
}
```

Kode di atas mengalami error karena mahasiswa ingin di-print padahal masih null, untuk memperbaiki
perlu dibuat seperti ini

```dart
void challenge_5() {
  (String, int) mahasiswa = ("Ali Zulfikar", 2141720088);
  print(mahasiswa);
}
```

Langkah terakhir yaitu pembuatan sebuah Records dengan nilai yang cukup `unik`

```dart
void challenge_5() {
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
```

`$1` dan `$2` menandakan mengakses sebuah nilai yang bukan `key` seperti a dan b serta uniknya
records dimulai dari 1 bukan 0

### Challenge

#### Jelaskan yang dimaksud Functions dalam bahasa Dart!

_Functions_ adalah sekumpulan baris kode yang dapat menerima input, melakukan proses, lalu
menghasilkan output. Functions dimanfaatkan untuk mengorganisir program menjadi suatu blok-blok kode
yang logis dan meningkatkan penggunaan ulang kode.

```dart
int function_name(parameters) {
  // Body of function
  return value;
}
```

#### Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!

Ada tiga jenis parameter di dalam function Dart

- Opsional
  Parameter ini dapat diabaikan saat memanggil fungsi. Parameter ditandai dengan tanda kurung
  siku ([]). Contoh:

```dart
void gfg1(int g1, [var g2]) {
  // Creating function 1
  print("g1 is $g1");
  print("g2 is $g2");
}

void main() {
  gfg1(01);
}
```

- Named Parameter
  Parameter ini harus disebutkan dengan nama saat memanggil fungsi. Paramter ini diberi tanda kurung
  kurawal ({})

```dart
void gfg2(int g1, {var g2, var g3}) {
  print("g1 is $g1");
  print("g2 is $g2");
  print("g3 is $g3");
}

void main() {
  gfg2(01, g3: 12);
}
```

- Default Parameter
  Parameter ini memiliki nilai awal yang ditentukan selain `null`. Nilai awal tersebut harus berupa
  konstanta saat kompilasi. Ditandai dengan (`=`).

```dart
void gfg3(int g1, {int g2 = 12}) {
  print("g1 is $g1");
  print("g2 is $g2");
}

void main() {
  gfg3(01);
}
```

#### Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!

Functions sebagai `first-class objects` memiliki arti yaitu functions adalah objek yang memiliki
tipe **Function**. Hal ini berarti bahwa functions dapat dimasukkan ke dalam variabel.

#### Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!

Anonymous Functions adalah **fungsi yang tidak memiliki nama**. Fungsi ini biasanya digunakan
sebagai argumen untuk fungsi lain atau ditugaskan ke variabel. Ditandakan dengan
tanda kurung kurawal ({}) atau tanda panah (=>). Contoh,

```dart
void main() {
  (list as List<String>).forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  (list as List<String>).forEach(
          (item) => print('${list.indexOf(item)}: $item'));
}
```

#### Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!

**Lexical scope** _adalah ruang lingkup di mana nama variabel dapat diakses dalam sebuah program_.
Di dalam bahasa Dart, lexical scope ditentukan oleh penempatan suatu fungsi. Variabel yang
dideklarasikan di luar fungsi dapat diakses oleh fungsi yang bersarang di dalamnya.
Contoh :

```dart

bool topLevel = true;

void main() {
  var insideMain = true;

  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}

```

Sedangkan **Lexical closures** adalah _fungsi yang dapat mengakses variabel dari ruang lingkup
lexical tempat fungsi tersebut didefinisikan_. Fungsi ini dapat **menutup** variabel tersebut dan
membawanya bersama saat fungsi dipanggil di tempat lain, contoh

```dart
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  var add2 = makeAdder(2);
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}

```

#### Jelaskan dengan contoh cara membuat return multiple value di Functions!

Untuk me-return sebuah nilai ganda (multiple value), kita dapat memanfaatkan beberapa cara. Salah
satunya adalah memanfaatkan List

```dart
List<int> minMax(List<int> numbers) {
  int min = numbers[0];
  int max = numbers[0];
  for (int n in numbers) {
    if (n < min) min = n;
    if (n > max) max = n;
  }
  return [min, max];
}

void main() {
  var numbers = [10, 5, 20, 15, 8];
  var result = minMax(numbers); // Get the list of two values
  print('The minimum is ${result[0]}'); // Access the first value
  print('The maximum is ${result[1]}'); // Access the second value
}
```

Dapat dilihat bahwa fungsi tersebut me-return sebuah value yang ganda, bukan hanya 1. Ada cara
lainnya tergantung konteks yang ingin diselesaikan. 

## Authors

[@alizul01](https://www.github.com/alizul01)