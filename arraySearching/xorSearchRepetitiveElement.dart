// https://www.geeksforgeeks.org/find-repetitive-element-1-n-1/?ref=lbp

int searchElem(List<dynamic> xs) {
  var xor1 = 1;
  for (var i = 2; i < xs.length; i++) {
    xor1 ^= i;
  }
  var xor2 = xs[0];
  for (var i = 1; i < xs.length; i++) {
    xor2 ^= xs[i];
  }
  return xor1 ^ xor2;
}

void main(List<dynamic> xs) {
  var arr = [9, 8, 2, 6, 1, 8, 5, 3, 4, 7];
  print(searchElem(arr));
}
