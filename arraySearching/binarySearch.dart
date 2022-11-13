// https://www.geeksforgeeks.org/search-insert-and-delete-in-a-sorted-array/?ref=lbp

int binarySearch(List<dynamic> xs, int start, int end, int key) {
  var mid = (start + end) ~/ 2;
  if (key == xs[mid]) {
    return mid;
  } else if (end == start + 1) {
    return -1;
  } else if (key > xs[mid]) {
    return binarySearch(xs, mid + 1, end, key);
  } else if (key < xs[mid]) {
    return binarySearch(xs, 0, mid, key);
  }
  return -1;
}

void main() {
  var x = [1, 2, 3, 4, 5, 6, 7];
  print(binarySearch(x, 0, x.length, 5));
}
