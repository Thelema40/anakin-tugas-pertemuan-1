int panas(int x) {
  if (x == 0) return 0;
  return (x % 10) + panas(x ~/ 10);
}

int dingin(int x, int y) {
  int air = 0;
  while (panas(air) != x) {
    air += y;
  }
  return air;
}

void main() {
  int hasilA = dingin(10, 7);
  print("hasil air dingin(10,7) = $hasilA"); //28
  int hasilB = dingin(2, 35);
  print("hasil air dingin(2,35) = $hasilB"); //10010
}
