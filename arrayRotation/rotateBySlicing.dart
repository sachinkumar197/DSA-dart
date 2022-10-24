List<dynamic> rotateByOne(List<dynamic> xs) {
  return xs.sublist(xs.length - 1) + xs.sublist(0, xs.length - 1);
}

void main() {
  var x = [1, 2, 3, 4, 5, 6, 7];
  print(rotateByOne(x));
}
