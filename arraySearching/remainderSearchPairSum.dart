String searchElem(List<dynamic> xs, int val) {
  var rem = List.filled(val, 0);
  for (var i = 0; i < xs.length; i++) {
    if (xs[i] < val) {
      rem[xs[i]] += 1;
    }
  }
  for (var i = 1; i < val ~/ 2; i++) {
    if (rem[i] > 0 && rem[val - i] > 0) {
      return "Yes";
    }
  }
  return "No";
}

void main() {
  var xs = [1, 4, 45, 6, 10, 8];
  var val = 16;
  print(searchElem(xs, val));
}
