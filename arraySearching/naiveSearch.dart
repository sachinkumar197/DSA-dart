// https://www.geeksforgeeks.org/search-insert-and-delete-in-an-unsorted-array/?ref=lbp

int searchElem(List<dynamic> xs, int x) {
  for (var i = 0; i < xs.length; i++) {
    if (xs[i] == x) {
      return i;
    }
  }
  return -1;
}

void main() {
  var xs = [1, 2, 3, 4, 5, 6, 7];
  print(searchElem(xs, 5));
}
