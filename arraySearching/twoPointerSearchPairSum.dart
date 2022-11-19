// https://www.geeksforgeeks.org/given-an-array-a-and-a-number-x-check-for-pair-in-a-with-sum-as-x/?ref=lbp

String searchElem(List<dynamic> xs, int left, int right, int val) {
  xs.sort();
  if (xs[left] + xs[right] == val) {
    return "Yes";
  } else if (xs[left] + xs[right] > val) {
    return searchElem(xs, left, right - 1, val);
  } else if (xs[left] + xs[right] < val) {
    return searchElem(xs, left - 1, right, val);
  }
  return "No";
}

void main() {
  var xs = [0, -1, 2, -3, 1];
  var val = -2;
  print(searchElem(xs, 0, xs.length - 1, val));
}
