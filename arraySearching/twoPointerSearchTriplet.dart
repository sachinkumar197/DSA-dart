// https://www.geeksforgeeks.org/find-a-triplet-that-sum-to-a-given-value/?ref=lbp

import 'dart:io';

String twoPointerSearch(List<dynamic> xs, int left, int right, int val) {
  xs.sort();
  if (left >= right) {
    return "No";
  } else if (xs[left] + xs[right] == val) {
    stdout.write("${xs[left]}, ");
    stdout.write("${xs[right]}, ");
    return "Yes";
  } else if (xs[left] + xs[right] > val) {
    return twoPointerSearch(xs, left, right - 1, val);
  } else if (xs[left] + xs[right] < val) {
    return twoPointerSearch(xs, left + 1, right, val);
  }
  return "No";
}

bool searchElem(List<int> xs, int val) {
  xs.sort();
  for (var i = 0; i < xs.length - 2; i++) {
    var result = twoPointerSearch(xs, i + 1, xs.length - 1, (val - xs[i]));
    if (result == "Yes") {
      stdout.write("${xs[i]}\n");
      return true;
    }
  }
  print('false');
  return false;
}

void main() {
  var A = [1, 4, 45, 6, 10, 8];
  var val = 22;
  searchElem(A, val);
}
