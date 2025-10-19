class Pegawai {
 void kerja() {
 print("Pegawai bekerja...");
 }
}
class Programmer extends Pegawai {
 @override
 void kerja() {
 print("Programmer menulis kode...");
 }
}
class Designer extends Pegawai {
 @override
 void kerja() {
 print("Designer membuat UI/UX...");
 }
}

class Manager extends Pegawai {
 @override
 void kerja() {
 print("Manager blabla...");
 }
}
void main() {
 List<Pegawai> daftar = [Programmer(), Designer(), Pegawai(), Manager()];
 for (var p in daftar) {
 p.kerja();
 }
}
// a.Programmer menulis kode...  Designer membuat UI/UX...  Pegawai bekerja...
// c. Polimorfisme membuat kode lebih fleksibel karena memungkinkan satu interface (seperti kerja()) digunakan oleh banyak kelas dengan perilaku berbeda. Jadi, kita bisa menambah jenis pegawai baru tanpa mengubah struktur kode utama.