// https://www.geeksforgeeks.org/search-insert-and-delete-in-an-unsorted-array/?ref=lbp

List<dynamic> insertElem(List<dynamic> xs, int n, int x) {
  xs.insert(n, x);
  return xs;
}

void main() {
  var xs = [1, 2, 3, 4, 5, 6, 7];
  print(insertElem(xs, 3, 5));
}
