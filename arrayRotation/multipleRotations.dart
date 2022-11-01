// https://www.geeksforgeeks.org/program-for-array-rotation-continued-reversal-algorithm/

List<dynamic> reverse(List<dynamic> xs) {
  for (var i = 0; i < xs.length ~/ 2; i++) {
    var temp = xs[xs.length - i - 1];
    xs[xs.length - i - 1] = xs[i];
    xs[i] = temp;
  }
  return xs;
}

List<dynamic> rotate(List<dynamic> xs, int k) {
  var d = k % xs.length;
  var x = reverse(xs);
  var leftArray = reverse(x.sublist(0, x.length - d));
  var rightArray = reverse(x.sublist(x.length - d));
  return leftArray + rightArray;
}

void main() {
  var x = [1, 2, 3, 4, 5, 6, 7];
  print(rotate(x, 22));
}
