// https://www.geeksforgeeks.org/find-a-triplet-that-sum-to-a-given-value/?ref=lbp

bool searchElem(List<dynamic> xs, int val) {
  var _hash = Map<int, int>();
  for (var i = 0; i < xs.length; i++) {
    for (var j = 0; j < xs.length; j++) {
      var tempVal = val - xs[i] - xs[j];
      if (_hash.containsKey(tempVal)) {
        print("${xs[i]},${xs[j]},${tempVal}");
        return true;
      } else {
        _hash[xs[j]] = 1;
      }
    }
  }
  return false;
}

void main() {
  var A = [1, 4, 45, 6, 10, 8];
  var val = 22;
  searchElem(A, val);
}
