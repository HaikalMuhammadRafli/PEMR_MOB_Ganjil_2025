void main() {
  // 2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
  // Jawaban : Functions atau fungsi adalah blok kode yang dirancang untuk melakukan tugas tertentu.
  // Fungsi dapat menerima input dalam bentuk parameter, memprosesnya, dan mengembalikan output.

  // 3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
  // Jawaban :
  // a. Positional Parameters: Parameter yang harus diisi sesuai urutan.
  // Contoh:
  void greet(String name, int age) {
    print('Hello, $name! You are $age years old.');
  }

  greet('Alice', 30); // Output: Hello, Alice! You are 30 years old.

  // b. Named Parameters: Parameter yang diidentifikasi dengan nama, sehingga urutannya tidak penting.
  void greetNamed({required String name, int age = 0}) {
    print('Hello, $name! You are $age years old.');
  }

  greetNamed(name: 'Bob', age: 25); // Output: Hello, Bob! You are 25 years old.
  greetNamed(name: 'Charlie'); // Output: Hello, Charlie! You are 0 years old.

  // c. Optional Parameters: Parameter yang tidak wajib diisi.
  void greetOptional(String name, [int? age]) {
    if (age != null) {
      print('Hello, $name! You are $age years old.');
    } else {
      print('Hello, $name!');
    }
  }

  greetOptional('David', 40); // Output: Hello, David! You are 40 years old.
  greetOptional('Eve'); // Output: Hello, Eve!

  // 4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
  // Jawaban : Functions sebagai first-class objects berarti bahwa fungsi dapat diperlakukan seperti variabel lainnya.
  // Fungsi dapat disimpan dalam variabel, diteruskan sebagai argumen ke fungsi lain, dan dikembalikan dari fungsi.
  // Contoh:
  int add(int a, int b) {
    return a + b;
  }

  // Menyimpan fungsi dalam variabel
  var sum = add;
  print(sum(3, 4)); // Output: 7

  // 5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
  // Jawaban : Anonymous Functions adalah fungsi yang tidak memiliki nama.
  // Fungsi ini biasanya digunakan sebagai argumen untuk fungsi lain atau untuk operasi singkat.
  var numbers = [1, 2, 3, 4, 5];
  var doubled = numbers.map((n) => n * 2).toList();
  print(doubled); // Output: [2, 4, 6, 8, 10]

  // 6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
  // Jawaban :
  // a. Lexical Scope adalah aturan yang menentukan cakupan variabel berdasarkan struktur kode sumber.
  // Contoh Lexical Scope:
  void outerFunction() {
    var outerVar = 'I am outside!';

    void innerFunction() {
      print(outerVar); // Akses variabel dari outerFunction
    }

    innerFunction();
  }

  outerFunction(); // Output: I am outside!

  // b. Lexical Closures adalah fungsi yang "mengunci" variabel dari lingkup luarnya.
  // Contoh Lexical Closures:
  Function makeAdder(int addBy) {
    return (int i) => addBy + i; // Closure yang mengunci addBy
  }

  var add2 = makeAdder(2);
  var add5 = makeAdder(5);
  print(add2(3)); // Output: 5
  print(add5(3)); // Output: 8
  print(add2(10)); // Output: 12
  print(add5(10)); // Output: 15
  
  // 7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
  // Jawaban : Untuk mengembalikan multiple value dari sebuah fungsi, kita dapat menggunakan beberapa cara seperti:
  // a. Menggunakan List
  List<int> getCoordinates() {
    return [10, 20];
  }

  var coordinates = getCoordinates();
  print('X: ${coordinates[0]}, Y: ${coordinates[1]}'); // Output: X: 10, Y: 20

  // b. Menggunakan Map
  Map<String, int> getPoint() {
    return {'x': 10, 'y': 20};
  }
  var point = getPoint();
  print('X: ${point['x']}, Y: ${point['y']}'); // Output: X: 10, Y: 20

  // c. Menggunakan Record (Dart 3.0+)
  (int, int) getPosition() {
    return (10, 20);
  }
  var position = getPosition();
  print('X: ${position.$1}, Y: ${position.$2}'); // Output: X: 10, Y: 20
}
