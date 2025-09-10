#set page(paper: "a4", margin: 2cm)

= LAPORAN PRAKTIKUM 01
PEMROGRAMAN MOBILE

*Haikal Muhammad Rafli / 2341720008 / 13 / TI-3D*

== SOAL 1
Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!

#image("image.png")
*Note:* Saya sudah melakukan praktikum di dartpad sesuai dengan output yang diminta

#image("image-1.png")
*Note :* Saya juga sudah mempraktekan kode dan berhasil dijalankan pada VSCODE

#pagebreak()

== SOAL 2

Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!

*Jawaban :*
Karena framework flutter menggunakan bahasa pemrograman dart, sehingga sangat disarankan untuk memahami basic dan konsep bahasa tersebut terlebih dahulu agar tidak kebingungan disaat menggunakan flutter nanti

#box(height: 0.5mm)

== SOAL 3
Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.

*Jawaban :*

- File run utama: 
```dart
void main() {
  //
}
```
- Dart Operators
  - Arithmetic Operators
    - *`[ + ]`* untuk tambahan.
    - *`[ - ]`* untuk pengurangan.
    - *`[ * ]`* untuk perkalian.
    - *`[ / ]`* untuk pembagian.
    - *`[ ~/ ]`* untuk pembagian bilangan bulat. Di Dart setiap pembagian sederhana dengan / menghasilkan nilai double. Untuk mendapatkan nilai bilangan bulat, Anda perlu membuat semacam transformasi (yaitu, typecast) dalam bahasa pemrograman lain; namun Dart sudah mendukung untuk operasi ini.
    - *`[ % ]`* untuk operasi modulus (sisa bagi dari bilangan bulat).
    - *`[ -expression ]`* untuk negasi (yang membalikkan suatu nilai).
  
  - Operator Increment dan Decrement
    - *`[ ++var ]`* atau *`[ var++ ]`* untuk menambah nilai variabel var sebesar 1
    - *`[ --var ]`* atau *`[ var-- ]`* untuk mengurangi nilai variabel var sebesar 1
  
  - Operator Equality dan Relational
    - Persamaan operator Dart dijelaskan sebagai berikut:
      - *`[ == ]`* untuk memeriksa apakah operan sama
      - *`[ != ]`* untuk memeriksa apakah operan berbeda
    - Untuk melakukan pengujian relasional, maka gunakan operator sebagai berikut:
      - *`[ > ]`* memeriksa apakah operan kiri lebih besar dari operan kanan
      - *`[ < ]`* memeriksa apakah operan kiri lebih kecil dari operan kanan
      - *`[ >= ]`* memeriksa apakah operan kiri lebih besar dari atau sama dengan operan kanan
      - *`[ <= ]`* memeriksa apakah operan kiri kurang dari atau sama dengan operan kanan
  
  - Operator Logical
    - *`[ !expression ]`* negasi atau kebalikan hasil ekspresi—yaitu, true menjadi false dan false menjadi true.
    - *`[ || ]`* menerapkan operasi logika OR antara dua ekspresi.
    - *`[ && ]`* menerapkan operasi logika AND antara dua ekspresi.

#box(height: 0.5mm)

== SOAL 4
Buatlah penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel !

*Jawaban :*

- Null Safety : Null Safety adalah salah satu fitur dalam bahasa dart yang berguna untuk mencegah variabel memiliki nilai null. Yang dimana variabel dalam dart hanya bisa bernilai null apabila nama variabel tersebut diberi tanda tanya. Contohnya...

```dart
void main() {
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
```
#image("image-2.png")

- Late Variable : Late Variable adalah variabel kosong yang ditunda inisialisasinya dan akan diisi nilai ketika akan digunakan. Contohnya...

```dart
void main() {
  // Inisialisasi value dilakukan nanti
  late String username;

  // Inisialisasi value
  username = "Haikal";
  print('Username: ${username}'); // Output: Username: Haikal
}
```

#image("image-3.png")
