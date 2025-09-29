import 'dart:io';
const int MOD = 1000000007;

void main() {
  // Baca input
  int B = int.parse(stdin.readLineSync()!.trim());
  String Y = stdin.readLineSync()!.trim();

  int n = Y.length;
  List<int> dp = List.filled(n + 1, 0);
  dp[0] = 1;

  // Panjang maksimum segmen = jumlah digit dari (B-1)
  int maxLen = (B - 1).toString().length;

  for (int i = 1; i <= n; i++) {
    for (int l = 1; l <= maxLen; l++) {
      if (i - l < 0) break;
      String seg = Y.substring(i - l, i);

      // skip leading zero
      if (seg.length > 1 && seg[0] == '0') continue;

      int val = int.parse(seg);
      if (val < B) {
        dp[i] = (dp[i] + dp[i - l]) % MOD;
      }
    }
  }

  print(dp[n]%MOD);
}
