// https://www.geeksforgeeks.org/search-insert-and-delete-in-a-sorted-array/?ref=lbp

List<dynamic> insertElem(List<dynamic> xs, int key) {
  xs.add(0);
  for (var i = 0; i < xs.length - 1; i++) {
    if (key <= xs[i]) {
      for (var j = xs.length - 1; j > i; j--) {
        xs[j] = xs[j - 1];
      }
      xs[i] = key;
      return xs;
    }
  }
  xs[xs.length - 1] = key;
  return xs;
}

void main() {
  var x = [1, 2, 3, 4, 5, 6, 7];
  print(insertElem(x, 10));
}
