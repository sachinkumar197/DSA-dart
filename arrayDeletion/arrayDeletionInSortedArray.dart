// https://www.geeksforgeeks.org/search-insert-and-delete-in-a-sorted-array/?ref=lbp

int binarySearch(List<dynamic> xs, int start, int end, int key) {
  var mid = (start + end) ~/ 2;
  print("start: $start, end: $end, mid: $mid");
  if (key == xs[mid]) {
    return mid;
  } else if ((end <= start) | (start >= end)) {
    return -1;
  } else if (key > xs[mid]) {
    return binarySearch(xs, mid + 1, end, key);
  } else if (key < xs[mid]) {
    return binarySearch(xs, start, mid, key);
  }
  return -1;
}

List<dynamic> deleteElem(List<dynamic> xs, int d) {
  var _index = binarySearch(xs, 0, xs.length - 1, d);
  if (_index != -1) {
    for (var i = _index; i < xs.length - 1; i++) {
      xs[i] = xs[i + 1];
    }
    return xs.sublist(0, xs.length - 1);
  }
  return xs;
}

void main() {
  var x = [1, 2, 3, 4, 5, 6, 7];
  // print(binarySearch(x, 0, x.length, 50));
  print(deleteElem(x, 5));
}
