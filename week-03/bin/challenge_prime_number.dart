import 'dart:io';

void sieveOfEratosthenes(int n) {
  List<bool> isPrime = List.filled(n + 1, true);
  bool isValid = false;

  for (int p = 2; p * p <= n; p++) {
    if (isPrime[p] == true) {
      for (int i = p * p; i <= n; i += p) {
        isPrime[i] = false;
      }
    }
    isValid = true;
  }

  for (int p = 2; p <= n; p++) {
    if (isPrime[p]) stdout.write('$p, ');
  }

  if (isValid) print('Nama: Muhammad Ali Zulfikar\n NIM: 2147120088');
}

void main() {
  int n = 201;
  print("Bilangan prima dari angka 0 - $n");
  sieveOfEratosthenes(n);
}
