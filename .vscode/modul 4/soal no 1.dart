// class Kendaraan {
//  void jalan() {
//  print("Kendaraan sedang berjalan");
//  }
// }
// class Mobil extends Kendaraan {
//  void klakson() {
//  print("Mobil membunyikan klakson: Tin tin!");
//  }
// }
// void main() {
//  var k = Kendaraan();
//  k.jalan();
//  var m = Mobil();
//  m.jalan();
//  m.klakson();
// }


class Kendaraan {
 void jalan() {
 print("Kendaraan sedang berjalan");
 }
}
class Motor extends Kendaraan {
 @override
 void jalan() {
 print("Motor melaju di jalan raya");
 }
 void bunyiMesin() {
 print("Motor berbunyi: Brummm!");
 }
}
void main() {
 var motor = Motor();
 motor.jalan();
 motor.bunyiMesin();
}

// b. Pewarisan langsung memakai method induk apa adanya, sedangkan overriding mengganti perilaku method induk dengan versi baru di kelas anak.
// d. Inheritance membuat kode lebih efisien karena menghindari penulisan ulang, memudahkan pemeliharaan, dan mempercepat pengembangan.