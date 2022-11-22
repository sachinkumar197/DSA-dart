// https://www.geeksforgeeks.org/given-an-array-a-and-a-number-x-check-for-pair-in-a-with-sum-as-x/?ref=lbp

String searchElem(List<dynamic> xs, int val) {
  var _hash = Map<int, int>();
  for (var i = 0; i < xs.length; i++) {
    var searchKey = val - xs[i];
    if (_hash.containsKey(searchKey)) {
      return "True";
    } else {
      _hash[xs[i]] = 0;
    }
  }
  return "No";
}

void main() {
  var xs = [0, -1, 2, -3, 1];
  var val = -2;
  print(searchElem(xs, val));
}
