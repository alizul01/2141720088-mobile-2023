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

## Late Variables

Late Variables memiliki dua kasus utama dalam penggunaannya:

1. Mendeklarasikan variabel non-nullable yang diinisialisasi setelah deklarasinya.
2. Menginisialisasi variabel dengan malas.

Kalau kamu udah yakin nantinya variabel akan diinisialisasi sebelum digunakan, namun Dart memberikan
error, kamu bisa memperbaiki kesalahan tersebut dengan memberikan _late_

// Contoh

## Kapan pakai Null Safety, kapan Pakai Late Variables?

// Penjelasan

| No | Nama                  | Absen | NIM        |
|----|-----------------------|-------|------------|
| 1  | Bagus Rezky Adhyaksa  | 07    | 2141720210 |
| 2  | Muhammad Ali Zulfikar | 20    | 2141720088 |