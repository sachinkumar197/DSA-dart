// https://www.geeksforgeeks.org/given-an-array-a-and-a-number-x-check-for-pair-in-a-with-sum-as-x/?ref=lbp

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

String searchElem(List<int> xs, int val) {
  xs.sort();
  for (var i = 0; i < xs.length - 1; i++) {
    int searchKey = val - xs[i];
    var j = binarySearch(xs, i + 1, xs.length - 1, searchKey);
    if (j != -1) {
      return "Yes";
    }
  }
  return "No";
}

void main() {
  var xs = [0, -1, 2, -3, 1];
  var val = -2;
  print(searchElem(xs, val));
}
