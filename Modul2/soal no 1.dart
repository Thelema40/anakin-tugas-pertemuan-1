void main() {
  // gunakan tipe yang mengizinkan null pada elemen: String? atau dynamic
  final List<String?> list = List<String?>.filled(4, null); // indeks 0..3
  // kita boleh mengganti elemen meskipun variabel list final (final mencegah reassign variabel, bukan mutasi isi)
  list[1] = 'Anakin Luthfi Amanza';    // nama
  list[2] = '1234567890';       // NIM (sebagai String)

  print(list); // [null, Anakin Luthfi Amanza, 1234567890, null]
}