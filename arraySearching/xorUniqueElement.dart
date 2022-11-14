// https://www.geeksforgeeks.org/find-element-appears-array-every-element-appears-twice/?ref=lbp

int searchElem(List<dynamic> xs) {
  var temp = xs[0];
  for (var i = 1; i < xs.length; i++) {
    temp = temp ^ xs[i];
  }
  return temp;
}

void main() {
  List<dynamic> x = [1, 1, 2, 2, 3, 4, 4, 5, 5];
  print(searchElem(x));
}
