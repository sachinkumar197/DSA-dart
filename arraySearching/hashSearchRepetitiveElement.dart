// https://www.geeksforgeeks.org/find-repetitive-element-1-n-1/?ref=lbp

int searchElem(List<dynamic> xs) {
  var temp_hash = Map<int, int>();
  for (var i = 0; i < xs.length; i++) {
    if (temp_hash.containsKey(xs[i])) {
      return xs[i];
    } else {
      temp_hash[xs[i]] = 1;
    }
  }
  return -1;
}

void main() {
  var x = [9, 8, 2, 6, 1, 8, 5, 3];
  print(searchElem(x));
}
