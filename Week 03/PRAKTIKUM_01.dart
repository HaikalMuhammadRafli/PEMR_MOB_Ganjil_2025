void main() {
  // Membuat list dengan tipe data integer dan menginisialisasi dengan beberapa nilai
  final List list = [1, 2, 3];
  // Memastikan menggunakan assert bahwa panjang list adalah 3 dan elemen kedua adalah 2
  assert(list.length == 3);
  // Memastikan menggunakan assert bahwa elemen kedua (indeks 1) adalah 2
  assert(list[1] == 2);
  // Mencetak panjang list dan elemen kedua
  print(list.length);
  print(list[1]);

  // Mengubah elemen kedua menjadi 1
  list[1] = 1;
  // Memastikan menggunakan assert bahwa elemen kedua sekarang adalah 1
  assert(list[1] == 1);
  // Mencetak elemen kedua setelah perubahan
  print(list[1]);

  // Output:
  // 3
  // 2
  // 1

  // ======================================================================
  // Langkah 3: 
  // ======================================================================

  // list[5] = null; -> Error karena index 5 tidak ada
  list[1] = "Haikal Muhammad Rafli";
  list[2] = "2341720008";

  // print(list[5]);
  print(list[1]);
  print(list[2]);

  // Output:
  // Haikal Muhammad Rafli
  // 2341720008
}
