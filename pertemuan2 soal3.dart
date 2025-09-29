// void main() {
//   var identitas = {'Nama': "Anakin", 'Nim': 123456789, 'Kelas': 'A'};
//   var kampus = {1: 'SIKC', 2: 'FIT', 3: 'tel-U', 'kampus': 1};
//   print(identitas);
//   print(kampus);
// } /// kode ini menghasilkan nama,nim dan kelas serta menampilkan daftar isi kampus

void main() {
  var identitas = {'Nama': "Anakin", 'Nim': 123456789, 'Kelas': 'A'};
  var kampus = {1: 'SIKC', 2: 'FIT', 3: 'tel-U', 'kampus': 1};

  var mhs1 = Map<String, String>.from(
    identitas.map((key, value) => MapEntry(key, value.toString())),
  );

  mhs1['Nama'] = 'Nama teman saudara';
  mhs1['Nim'] = 'Nim teman saudara';
  mhs1['Kota'] = 'Bandung';

  var mhs2 = Map<dynamic, String>.from(
    identitas.map((key, value) => MapEntry(key, value.toString())),
  );

  mhs2[2] = 'FIT';
  mhs2[10] = 'tel-U';
  mhs2[18] = 'Kampus Utama';

  print(mhs1);
  print(mhs2);
}
