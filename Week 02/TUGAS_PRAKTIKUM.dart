void main() {
  int x = 0;
  String name = 'Haikal Muhammad Rafli';
  String nim = '2341720008';

  bool isPrime;

  for (; x < 201; x++) {
    isPrime = true;

    if (x == 0 || x == 1) {
      isPrime = false;
    }

    for (var i = 2; i <= x / 2; i++) {
      if (x % i == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print('[${x}] >> Bilangan Prima');
    }
  }

  print('${name} - ${nim}');
}
