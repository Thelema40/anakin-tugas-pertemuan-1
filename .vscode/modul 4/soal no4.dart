class Mahasiswa {
 String nama;
 Mahasiswa(this.nama);
}
class Universitas {
 List<Mahasiswa> daftarMhs = [];
}
class Mesin {
 void nyala() {
 print("Mesin menyala...");
 }
}
class Mobil {
 final Mesin mesin = Mesin(); // Komposisi
 void nyalakanMobil() {
 mesin.nyala();
 print("Mobil siap jalan!");
 }
}
void main() {
 print("=== AGREGASI ===");
 Universitas? u = Universitas();
 var m1 = Mahasiswa("Budi");
 var m2 = Mahasiswa("Ani");
 u.daftarMhs.addAll([m1, m2]);
 print("Mahasiswa: ${u.daftarMhs.map((m) => m.nama).toList()}");
 u = null;
 print("Setelah Universitas dihapus, Mahasiswa tetap ada:");
 print("Nama Mahasiswa: ${m1.nama}, ${m2.nama}");
 print("\n=== KOMPOSISI ===");
 Mobil? mobil = Mobil();
 mobil.nyalakanMobil();
 mobil = null;
 print("Jika Mobil dihapus, Mesin di dalamnya juga ikut dianggap tidak berguna.");
}

// b. Karena hubungan antara Universitas dan Mahasiswa adalah agregasi, di mana Universitas hanya “memiliki” daftar mahasiswa tetapi tidak sepenuhnya menguasainya. Objek Mahasiswa dibuat secara terpisah, jadi meskipun Universitas dihapus, Mahasiswa tetap ada
// Karena hubungan antara Mobil dan Mesin adalah komposisi, di mana Mesin dibuat di dalam Mobil dan bergantung sepenuhnya padanya. Jika Mobil dihapus, maka Mesin juga tidak bisa digunakan lagi

// c. agregasi, hubungan antara dua objek bersifat longgar, artinya objek anak masih bisa berdiri sendiri meskipun objek induknya dihapus. Sebaliknya, pada komposisi hubungan bersifat kuat, di mana objek anak sepenuhnya bergantung pada objek induk.