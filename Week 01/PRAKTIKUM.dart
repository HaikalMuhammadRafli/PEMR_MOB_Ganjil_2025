void main() {
  soal_late_var();
}

void soal_1() {
  String name = 'Haikal Muhammad Rafli';
  int age = 20;

  for (age; age > 0; age--) {
    print('Nama saya ${name}, sekarang berumur ${age}');
  }
}

void soal_null_safety() {
  // Variabel not nullable (tidak boleh null)
  String name = "Haikal";
  print(name);

  // name = null; // ERROR: variabel ini tidak boleh null

  // Variabel nullable (boleh null)
  String? nickname;
  print(nickname); // Output: null

  nickname = "Hai";
  print(nickname); // Output: Kai
}

void soal_late_var() {
  // Inisialisasi value dilakukan nanti
  late String username;

  // Inisialisasi value
  username = "Haikal";
  print('Username: ${username}'); // Output: Username: Haikal
}
