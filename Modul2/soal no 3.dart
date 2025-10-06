void main() {
  var identitas = {
    'Nama': 'Nama Saudara',
    'NIM': 12143123,
    'Kelas': 'A',
  };

  // konversi semua value menjadi String
  Map<String, String> mhs1 = identitas.map((key, value) => MapEntry(key, value.toString()));

  // contoh kampus: kita ingin Map<String,String> juga, pakai .map
  var kampus = {
    '0': 'Sistem Informasi Kota Cerdas',
    '1': 'FIT',
    '2': 'Tel-U',
    'Kampus': 'Utama',
  };
  Map<String,String> mhs2 = kampus.map((key, value) => MapEntry(key.toString(), value.toString()));

  // menambahkan elemen Asal Sekolah dan Asal Kota
  mhs1['Asal Sekolah'] = 'SMA Contoh';
  mhs2['Asal Kota'] = 'Bandung';

  print(mhs1);
print(mhs2);
}