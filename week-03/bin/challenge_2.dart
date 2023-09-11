import 'dart:io';

void main() {
  int gfCounter = 0;
  List<String> girlfriends = [];

  while (true) {
    print('Jumlah pasanganmu: $gfCounter');
    print('List nama pasangan: $girlfriends');

    print('Apa kamu ingin menambahkan pasangan baru? (yes/no)');
    String input = stdin.readLineSync() ?? '';

    if (input.toLowerCase() == 'yes') {
      print('Masukkan nama pacar:');
      String girlfriendName = stdin.readLineSync() ?? '';
      girlfriends.add(girlfriendName);
      gfCounter++;
    } else if (input.toLowerCase() == 'no') {
      print('Terima kasih sudah bermain! Jumlah pasangan yang dimiliki: $gfCounter');
      break;
    } else {
      print('Jawaban tidak valid. Silakan jawab "yes" atau "no".');
    }
  }
}
