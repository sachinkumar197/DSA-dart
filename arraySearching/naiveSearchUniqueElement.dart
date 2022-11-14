// https://www.geeksforgeeks.org/find-element-appears-array-every-element-appears-twice/?ref=lbp

int searchElem(List<dynamic> xs) {
  var i = 0;
  while (i < xs.length) {
    var count = 0;
    var j = 0;
    while (j < xs.length) {
      if ((i != j) & (xs[i] == xs[j])) {
        count += 1;
        break;
      }
      j += 1;
    }
    if (count == 0) {
      return xs[i];
    }
    i += 1;
  }
  return -1;
}

void main() {
  List<dynamic> x = [1, 1, 2, 2, 3, 4, 4, 5, 5];
  print(searchElem(x));
}
