import 'dart:collection';

void main() {
  Queue<String> antrean = Queue<String>();
  antrean.addAll(['A', 'B', 'C']);
  print(antrean);

  // Tambahkan kode ini setelah print(antrean);
  while (antrean.isNotEmpty) {
    print("${antrean.removeFirst()} keluar"); 
}
}