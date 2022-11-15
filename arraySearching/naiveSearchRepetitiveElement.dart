// https://www.geeksforgeeks.org/find-repetitive-element-1-n-1/?ref=lbp

int searchElement(List<dynamic> xs) {
  for (var i = 0; i < xs.length; i++) {
    for (var j = i + 1; j < xs.length; j++) {
      if (xs[i] == xs[j]) {
        return xs[i];
      }
    }
  }
  return -1;
}

void main() {
  var x = [9, 8, 2, 6, 1, 8, 5, 3, 4, 7];
  print(searchElement(x));
}
