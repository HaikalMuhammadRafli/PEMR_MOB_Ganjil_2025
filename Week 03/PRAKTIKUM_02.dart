void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // Output: {fluorine, chlorine, bromine, iodine, astatine}
  // Penjelasan: Tidak terjadi error dan mencetak semua elemen dalam set halogens.

  // ======================================================================
  // Langkah 3
  // ======================================================================

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  // Kode diatas membuat tiga set kosong dengan cara yang berbeda.
  // names1 dan names2 adalah set kosong dengan tipe data String,
  // sedangkan names3 adalah map kosong.

  // Menggunakan metode add() dan addAll() untuk menambahkan elemen ke dalam set
  names1.add('Haikal Muhammad Rafli');
  names1.add('2341720008');

  names2.addAll(['Haikal Muhammad Rafli', '2341720008']);

  print(names1);
  print(names2);
  print(names3);

  // Output:
  // {Haikal Muhammad Rafli, 2341720008}
  // {Haikal Muhammad Rafli, 2341720008}
  // {}
}
