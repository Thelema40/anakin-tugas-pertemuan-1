class Mobil {
  String merk;
  String warna;
  int kecepatan;

  Mobil(this.merk, this.warna, this.kecepatan);

  void jalan() {
    print("Mobil $merk melaju dengan kecepatan $kecepatan km/jam");
  }

  void ubahKecepatan(int nilai) {
    if (nilai >= 0) {
      kecepatan = nilai;
      print("Kecepatan mobil diubah menjadi $kecepatan km/jam");
    } else {
      print("Error: Nilai kecepatan tidak boleh negatif!");
    }
  }

  void berhenti() {
    kecepatan = 0;
    print("Mobil berhenti.");
  }
}

void main() {
  var mobil1 = Mobil("Toyota", "Merah", 100);
  var mobil2 = Mobil("Honda", "Hitam", 60);

  mobil1.jalan();
  mobil1.ubahKecepatan(120);
  mobil1.berhenti();

  mobil2.jalan();
  mobil2.ubahKecepatan(-50); // Contoh error
  mobil2.ubahKecepatan(80);
  mobil2.jalan();
}
