![img.png](docs/dart_img.png)

# Variables at Dart

Oke kita bicara singkat mengenai `variable` terlebih dahulu, singkatnya variable adalah sebuah wadah
untuk menyimpan suatu nilai. Sebagai contoh,

```dart

var nama = 'Alizul Rezky';
```

Sekarang kita memiliki sebuah variable bernama "nama" yang memiliki nilai `Alizul Rezky`. Namun
kalau kita menggunakan `var` saja itu bersifat dinamis, bagaimana jika kita ingin ada anotasi tipe
data?

```dart

String nama = 'Alizul Rezky';
```

Secara eksplisit kita mengatakan bahwa `nama` adalah String

## Null Safety

Null Safety mencegah **error** yang diakibatkan oleh akses yang tidak disengaja saat
variabel di-set bernilai `null`. Kesalahan null terjadi saat kita mengakses sebuah properti atau
memanggil metode yang bernilai `null`. Dengan null safety, compiler dapat mendeteksi
kesalahan pada saat melakukan _compiling_.

Misalnya, Kamu ingin mencari nilai absolut dari variabel `int` `i`.
Jika `i` bernilai `null`, memanggil `i.abs()` akan menyebabkan error.
Dalam bahasa lain, mencoba ini dapat menyebabkan _runtime error_,
tapi compiler Dart dapat mencegah runtime error.

// Contoh
```dart
String? nullableName; // Declare a nullable variable

void main() {
  nullableName = "Zaki"; // Initialize the nullable variable
  print(nullableName); // Access the nullable variable

// Declare a non nullable variable
  String nonNullableName = "Naresh"; 
  print(nonNullableName);
}
```

## Late Variables

Late Variables memiliki dua kasus utama dalam penggunaannya:

1. Mendeklarasikan variabel non-nullable yang diinisialisasi setelah deklarasinya.
2. Menginisialisasi variabel dengan malas.

Kalau kamu udah yakin nantinya variabel akan diinisialisasi sebelum digunakan, namun Dart memberikan
error, kamu bisa memperbaiki kesalahan tersebut dengan memberikan _late_

// Contoh
```dart
late String name; // Declare a late variable

void main() {
  name = "Andi"; // Initialize the late variable
  print(name); // Access the late variable
}
```
## Contoh Penggabungan Late dan Null dalam satu file 
```dart
void main() {
  // variable Late
  late String lateName; // Declare a late variable
  lateName = "Alivan"; // Initialize the late variable
  print(lateName); // Access the late variable

  // variable Null
  String? nullableName; // Declare a nullable variable
  nullableName = 'Rezky';
  print(nullableName); // This will not cause a compile-time error, but a runtime error if nullableName is null

  String nonNullableName = "Alizul"; // Declare a non nullable variable
  print(nonNullableName);

  String? nullableNam; // Declare a nullable variable
  print(nullableNam); // This will not cause a compile-time error, but a runtime error if nullableNam is null
}
```
## Kapan pakai Null Safety, kapan Pakai Late Variables?

// Penjelasan

| No | Nama                  | Absen | NIM        |
|----|-----------------------|-------|------------|
| 1  | Bagus Rezky Adhyaksa  | 07    | 2141720210 |
| 2  | Muhammad Ali Zulfikar | 20    | 2141720088 |