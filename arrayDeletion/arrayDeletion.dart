// https://www.geeksforgeeks.org/search-insert-and-delete-in-an-unsorted-array/?ref=lbp

int findElem(List<dynamic> xs, int d) {
  for (var i = 0; i < xs.length; i++) {
    if (xs[i] == d) {
      return i;
    }
  }
  return -1;
}

List<dynamic> deleteElem(List<dynamic> xs, int d) {
  var index = findElem(xs, d);
  for (var i = index; i < xs.length - 1; i++) {
    xs[i] = xs[i + 1];
  }
  return xs.sublist(0, xs.length - 1);
}

void main() {
  var xs = [1, 2, 3, 4, 5, 6, 7];
  print(deleteElem(xs, 5));
}
