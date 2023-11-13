// jokes.dart

import 'dart:math';

class JokesRepository {
  final List<String> jokes = [
    "Kenapa bapak-bapak suka banget pakai sandal jepit? Karena kalau sepatu mahal, ntar dicolong anak!",
    "Bapak-bapak itu seperti wifi, kadang sinyalnya kuat, kadang tiba-tiba ilang!",
    "Bapak-bapak selalu bilang, 'Anak muda jangan banyak cakap,' sambil bercerita panjang lebar tentang masa muda mereka.",
    "Kenapa bapak-bapak suka bawa payung saat hujan? Karena 'bapak' itu selalu melindungi kita!",
    "Bapak-bapak itu selalu punya stok barang tua di garasi, 'nanti aja butuhnya' katanya.",
    "Mengapa bapak-bapak suka tidur sambil nonton TV? Supaya mereka bisa 'multi-tasking' dalam mimpi!",
    "Kenapa bapak-bapak selalu punya banyak kunci di gantungan kunci? Supaya mereka bisa tahu mana yang membuka apa!",
    "Bapak-bapak itu seperti GPS jaman dulu, kadang-kadang bisa nyasar di jalan sendiri!",
    "Mengapa bapak-bapak suka minta selalu 'diberi tahu' tentang apa pun? Karena mereka merasa sebagai 'Ketua Badan Informasi Keluarga'!",
    "Bapak-bapak selalu punya koleksi baju yang terdiri dari kemeja kotak-kotak dan celana pendek klasik, seperti kostum khusus superhero!",
  ];

  String getRandomJoke() {
    final random = Random();
    return jokes[random.nextInt(jokes.length)];
  }
}
