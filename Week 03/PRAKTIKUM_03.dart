void main() {
  // Membuat map dengan tipe data key String dan value dynamic
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  // Membuat map dengan tipe data key int dan value dynamic
  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  print(gifts);
  print(nobleGases);

  // Output:
  // {first: partridge, second: turtledoves, fifth: 1}
  // {2: helium, 10: neon, 18: 2}
  // Tidak terjadi error

  // ======================================================================
  // Langkah 3
  // ======================================================================

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  // Menambahkan elemen nama dan nim ke dalam setiap map
  gifts['nama'] = 'Haikal Muhammad Rafli';
  gifts['nim'] = '2341720008';
  nobleGases[1000] = 'Haikal Muhammad Rafli';
  nobleGases[2000] = '2341720008';

  mhs1['nama'] = 'Haikal Muhammad Rafli';
  mhs1['nim'] = '2341720008';

  mhs2[1000] = 'Haikal Muhammad Rafli';
  mhs2[2000] = '2341720008';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);

  // Output:
  // {first: partridge, second: turtledoves, fifth: golden rings, nama: Haikal Muhammad Rafli, nim: 2341720008}
  // {2: helium, 10: neon, 18: argon, 1000: Haikal Muhammad Rafli, 2000: 2341720008}
  // {nama: Haikal Muhammad Rafli, nim: 2341720008}
  // {1000: Haikal Muhammad Rafli, 2000: 2341720008}
}
