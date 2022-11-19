// https://www.geeksforgeeks.org/given-an-array-a-and-a-number-x-check-for-pair-in-a-with-sum-as-x/?ref=lbp

String searchElem(List<dynamic> xs, int val) {
  for (var i = 0; i < xs.length; i++) {
    for (var j = i + 1; j < xs.length; j++) {
      if (xs[i] + xs[j] == val) {
        return "Yes";
      }
    }
  }
  return "No";
}

void main() {
  var xs = [0, -1, 2, -3, 1];
  var val = -2;
  print(searchElem(xs, val));
}
