import 'dart:math';

class Bebek {
  int id;
  int favorit;
  Bebek(this.id, this.favorit);
}

class Bekatul {
  int manis;
  Bekatul(this.manis);
}

class JaringanGosip {
  List<int> anggota = [];

  JaringanGosip(this.anggota);

  int hitungKetidakpuasan(List<Bebek> bebekList, List<Bekatul> bekatulList) {
    int total = 0;
    for (var b in bebekList.where((b) => anggota.contains(b.id))) {
      int minSelisih = bekatulList
          .map((g) => (b.favorit - g.manis).abs())
          .reduce(min);
      total += minSelisih;
    }
    return total;
  }
}

void main() {
  var bebekList = [
    Bebek(1, 10),
    Bebek(2, 20),
    Bebek(3, 30),
    Bebek(4, 40),
    Bebek(5, 50),
    Bebek(6, 60),
    Bebek(7, 70),
    Bebek(8, 80),
  ];

  var bekatulList = [
    Bekatul(30),
    Bekatul(40),
    Bekatul(50),
    Bekatul(60),
  ];

  var jaringan1 = JaringanGosip([1, 8, 6, 5, 3]);
  var jaringan2 = JaringanGosip([2, 7]);
  var jaringan3 = JaringanGosip([4]);

  int total = jaringan1.hitungKetidakpuasan(bebekList, bekatulList) +
      jaringan2.hitungKetidakpuasan(bebekList, bekatulList) +
      jaringan3.hitungKetidakpuasan(bebekList, bekatulList);

  print("Total rasa ketidakpuasan minimum: $total");
}
