// https://www.geeksforgeeks.org/search-insert-and-delete-in-an-unsorted-array/?ref=lbp

List<dynamic> naiveInsert(List<dynamic> xs, int x) {
  xs.add(x);
  return xs;
}

void main() {
  var xs = [1, 2, 3, 4, 5, 6, 7];
  print(naiveInsert(xs, 5));
}
