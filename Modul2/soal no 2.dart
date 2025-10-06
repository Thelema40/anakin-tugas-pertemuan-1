void main() {
  final Set<String> prodi = {'Sistem Informasi', 'Teknologi Rekayasa Multimedia'};
  prodi.add('Anakin Luthfi Amanza'); // add satu per satu
  prodi.add('Kelas A');
  prodi.add('1234567890');   // NIM sebagai string

  // atau addAll
  prodi.addAll(['Anggota2','Kelas B','0987654321']);
 print(prodi); /// {Sistem Informasi, Teknologi Rekayasa Multimedia, Anakin Luthfi Amanza, Kelas A, 1234567890, Anggota2, Kelas B, 0987654321}
}