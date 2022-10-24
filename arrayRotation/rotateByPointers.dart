// https://www.geeksforgeeks.org/c-program-cyclically-rotate-array-one/

List<dynamic> rotateByOne(List<dynamic> xs) {
  var i = 0;
  var j = xs.length - 1;
  do {
    var temp = xs[i];
    xs[i] = xs[j];
    xs[j] = temp;
    i += 1;
  } while (i != j);
  return xs;
}

void main() {
  var x = [1, 2, 3, 4, 5, 6, 7];
  print(rotateByOne(x));
}
