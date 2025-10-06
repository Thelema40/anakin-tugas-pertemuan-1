int longestCantikHEI(String s) {
  // pola dasar untuk 6 kemungkinan (periodic)
  List<String> patterns = [
    'HEI', // pattern repeated -> HEIHEI...
    'HIE',
    'EIH',
    'EHI',
    'IHE',
    'IEH'
  ];

  int n = s.length;
  int best = 0;

  for (String pat in patterns) {
    int patIdx = 0; // next index in pattern 
    int matched = 0;
    for (int i = 0; i < n; i++) {
      if (s[i] == pat[patIdx]) {
        matched++;
        patIdx = (patIdx + 1) % 3;
      }
    }
    // Panjang urutan bagian terpanjang yang cocok dengan awalan pola yang diulang.
    if (matched > best) best = matched;
  }

  return best >= 3 ? best : -1;
}

void main() {
  List<String> tests = ['HEI', 'HEEIIH', 'HHH', 'HEIHEI', 'HIEH', 'HEIH'];
  for (var t in tests) {
    print('$t -> ${longestCantikHEI(t)}');
  }
}