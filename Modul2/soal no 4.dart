void main() {
  String nim = '12345';
  // ubah tiap karakter menjadi int
  List<int> nimList = nim.split('').map((c) => int.parse(c)).toList();
  print(nimList); // [1,2,3,4,5]
}