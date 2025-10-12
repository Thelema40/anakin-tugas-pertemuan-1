// class Mahasiswa { //kode A
//   String? nama;
//   int? nim;
//   String? jurusan;

//   // Method untuk menampilkan data
//   void tampilkanData() {
//     print("Nama    : $nama");
//     print("NIM     : $nim");
//     print("Jurusan : $jurusan");
//   }
// }

// void main() {
//   var m1 = Mahasiswa();
//   m1.nama = "Budi";
//   m1.nim = 12345;
//   m1.jurusan = "SIKC";

//   m1.tampilkanData();

//   var m2 = Mahasiswa();
//   m2.nama = "Ani";
//   m2.nim = 67890;
//   m2.jurusan = "TRPL";
//   m2.tampilkanData();
// }



class Mahasiswa { /// Kode B
  String nama;
  int nim;
  String jurusan;

  Mahasiswa(this.nama, this.nim, this.jurusan);

  void tampilkanData() {
    print("Nama    : $nama");
    print("NIM     : $nim");
    print("Jurusan : $jurusan");
  }
}

void main() {
  var m1 = Mahasiswa("Budi", 12345, "SIKC");
  var m2 = Mahasiswa("Ani", 67890, "TRPL");

  m1.tampilkanData();
  m2.tampilkanData();
}

