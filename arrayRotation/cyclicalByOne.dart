// https://www.geeksforgeeks.org/c-program-cyclically-rotate-array-one/

List<dynamic> rotateByOne(List<dynamic> xs) {
  var temp = xs[0];
  for (var i = 0; i < xs.length - 1; i++) {
    xs[i] = xs[i + 1];
  }
  xs[xs.length - 1] = temp;
  return xs;
}

void main() {
  var x = [1, 2, 3, 4, 5, 6, 7];
  print(rotateByOne(x));
}
