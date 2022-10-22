// https://www.geeksforgeeks.org/array-rotation/
// Approach 2 (Rotate one by one):

List<dynamic> rotateByOne(List<dynamic> x) {
  var firstElem = x[0];
  for (var i = 0; i < x.length - 1; i++) {
    x[i] = x[i + 1];
  }
  x[x.length - 1] = firstElem;
  return x;
}

List<dynamic> rotate(List<dynamic> x, int d) {
  var c = 1;
  do {
    x = rotateByOne(x);
    c += 1;
  } while (c <= d);
  return x;
}

void main() {
  var x = [1, 2, 3, 4, 5, 6, 7];
  print(rotate(x, 2));
}
