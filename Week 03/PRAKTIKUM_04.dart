void main() {
  // Membuat list dengan tipe data integer dan menginisialisasi dengan beberapa nilai
  var list = [1, 2, 3];

  // Menggunakan spread operator untuk menambahkan elemen ke list2
  var list2 = [0, ...list];

  // Mencetak isi list, list2, dan panjang list2
  print(list);
  print(list2);
  print(list2.length);

  // Output:
  // [1, 2, 3]
  // [0, 1, 2, 3]

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  print(list3.length);
  var list_nim = ['Haikal Muhammad Rafli', '2341720008', ...list3];
  print(list_nim);

  // Output:
  // [Haikal Muhammad Rafli, 2341720008, 0, 1, 2, null]

  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // Output:
  // [Home, Furniture, Plants, Outlet] Jika promoActive bernilai true
  // [Home, Furniture, Plants] Jika promoActive bernilai false

  var login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);

  // Output:
  // [Home, Furniture, Plants, Inventory] Jika login bernilai 'Manager'
  // [Home, Furniture, Plants] Jika login bernilai selain 'Manager'

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);

  // Output:
  // [#0, #1, #2, #3]

  // Manfaat collection for adalah untuk membuat koleksi baru berdasarkan koleksi yang sudah ada,
  // memungkinkan kita untuk melakukan transformasi atau filter elemen-elemen dalam koleksi tersebut
  // dengan cara yang lebih ringkas dan mudah dibaca.
}
