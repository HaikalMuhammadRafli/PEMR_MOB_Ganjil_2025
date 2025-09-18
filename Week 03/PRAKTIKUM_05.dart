var record = ('first', a: 2, b: true, 'last');

void main() {
  print(record);

  // Output:
  // (first, last, a: 2, b: true)

  // Penjelasan:
  // Record adalah tipe data baru di Dart yang memungkinkan kita untuk mengelompokkan beberapa nilai
  // menjadi satu kesatuan. Record dapat memiliki elemen dengan nama (named fields) dan elemen tanpa nama (positional fields).
  // Elemen dengan nama dapat diakses menggunakan nama yang diberikan, sedangkan elemen tanpa nama diakses berdasarkan posisinya.

  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  // Menggunakan fungsi tukar
  var numbers = (5, 10);
  var swapped = tukar(numbers);
  print('Original: $numbers, Swapped: $swapped');

  // Output:
  // Original: (5, 10), Swapped: (10, 5)

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ('Haikal Muhammad Rafli', 20);
  print(mahasiswa);

  // Output:
  // (Haikal Muhammad Rafli, 20)

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
