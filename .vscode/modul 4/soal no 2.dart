class RekeningBank {
 double _saldo = 0;
 void setor(double jumlah) {
  if (jumlah > 0) {
    _saldo += jumlah;
  }
 }
 void tarik(double jumlah) {
 if (_saldo >= jumlah) {
 _saldo -= jumlah;
 } else {
 print("Saldo tidak cukup!");
 }
 }
 double get saldo => _saldo;
}
void main() {
 var r = RekeningBank();
 r.setor(-1000);
 print("Saldo: ${r.saldo}");
 r.tarik(1500);
 print("Saldo: ${r.saldo}");
}

// a. menampilkan saldo: 1000 dan setelah ditarik menampilkan saldo: 500
// c. enkapsulasi melindungi data dengan membuat atribut private dan menyediakan method untuk mengaksesnya, sehingga mencegah akses langsung dari luar kelas.