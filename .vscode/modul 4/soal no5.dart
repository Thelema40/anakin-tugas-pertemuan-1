import 'dart:io';
import 'dart:math';

/// ===============================
/// Abstraksi dasar kalkulator kayu
/// ===============================
abstract class KayuCalculator {
  final List<int> _trees; // enkapsulasi
  final int _need; // kebutuhan kayu

  KayuCalculator(this._trees, this._need);

  /// Hitung total kayu yang didapat jika potong pada tinggi [cutHeight]
  int calculateWood(int cutHeight) {
    int total = 0;
    for (var h in _trees) {
      if (h > cutHeight) total += (h - cutHeight);
    }
    return total;
  }

  /// Metode abstrak — akan diimplementasikan secara polimorfik
  int calculateOptimalCut();
}

/// =====================================
/// Implementasi Binary Search (Pewarisan)
/// =====================================
class BinarySearchKayuCalculator extends KayuCalculator {
  BinarySearchKayuCalculator(List<int> trees, int need) : super(trees, need);

  @override
  int calculateOptimalCut() {
    int low = 0;
    int high = _trees.reduce(max);
    int best = -1;

    while (low <= high) {
      int mid = (low + high) ~/ 2;
      int total = calculateWood(mid);

      if (total >= _need) {
        best = mid; // masih cukup, coba cari batas lebih tinggi
        low = mid + 1;
      } else {
        high = mid - 1;
      }
    }

    return best;
  }
}

/// ============================================
/// Kelas utama: Pak Ranceher (komposisi/assosiasi)
/// ============================================
class PakRanceher {
  final KayuCalculator calculator;

  PakRanceher(this.calculator);

  int cariBatasOptimal() {
    return calculator.calculateOptimalCut();
  }
}

/// =============
/// Fungsi utama
/// =============
void main() {
  // Input format:
  // N M
  // A1 A2 ... AN
  List<String> firstLine = stdin.readLineSync()!.split(' ');
  int N = int.parse(firstLine[0]);
  int M = int.parse(firstLine[1]);

  List<int> trees = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  // Buat objek kalkulator & PakRanceher
  var calculator = BinarySearchKayuCalculator(trees, M);
  var pakRanceher = PakRanceher(calculator);

  // Cetak hasil akhir
  print(pakRanceher.cariBatasOptimal());
}

// Penjelasan:
// a. Output program adalah batas potong kayu optimal yang harus diterapkan untuk
//    memenuhi kebutuhan kayu M. Misalnya, jika inputnya adalah:
//    4 7
//    20 15 10 17
//    Maka outputnya adalah 15, karena dengan memotong pada tinggi 15,
//    Pak Ranceher akan mendapatkan kayu sebanyak 7 unit (5 dari pohon
//    setinggi 20, 2 dari pohon setinggi 17, dan 0 dari pohon lainnya).
// b. Enkapsulasi diterapkan dengan menyembunyikan atribut _trees dan _need
//    dalam kelas KayuCalculator, sehingga hanya dapat diakses melalui
//    metode yang disediakan. Pewarisan terlihat pada kelas
//    BinarySearchKayuCalculator yang mewarisi dari KayuCalculator.
//    Polimorfisme diterapkan melalui metode abstrak
//    calculateOptimalCut() yang diimplementasikan secara berbeda
//    dalam kelas turunan.
// c. Dengan menggunakan abstraksi, kita dapat menyembunyikan
//    kompleksitas algoritma pencarian batas potong kayu,
//    sehingga pengguna (Pak Ranceher) hanya perlu berinteraksi
//    dengan antarmuka sederhana untuk mendapatkan hasil yang diinginkan.
// d. Komposisi/assosiasi terlihat pada kelas PakRanceher yang
//    memiliki objek KayuCalculator. Hal ini memungkinkan
//    fleksibilitas dalam mengganti strategi kalkulasi
//    tanpa mengubah kelas PakRanceher itu sendiri.