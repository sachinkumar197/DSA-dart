// https://www.geeksforgeeks.org/find-a-triplet-that-sum-to-a-given-value/?ref=lbp

bool searchElem(List<dynamic> xs, int val) {
  for (var i = 0; i < xs.length; i++) {
    for (var j = i + 1; j < xs.length; j++) {
      for (var k = j + 1; k < xs.length; k++) {
        if ((xs[i] + xs[j] + xs[k]) == val) {
          print('${xs[i]}, ${xs[j]}, ${xs[k]}');
          return true;
        }
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
