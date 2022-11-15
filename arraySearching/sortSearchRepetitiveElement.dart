// https://www.geeksforgeeks.org/find-repetitive-element-1-n-1/?ref=lbp

int searchElem(List<dynamic> xs) {
  xs.sort();
  for (var i = 0; i < xs.length; i++) {
    if (xs[i] != i + 1) {
      return xs[i];
    }
  }
  return -1;
}

void main() {
  var x = [9, 8, 2, 6, 1, 8, 5, 3, 4, 7];
  print(searchElem(x));
}
