// https://www.geeksforgeeks.org/block-swap-algorithm-for-array-rotation/

List<dynamic> splitArray(List<dynamic> L, List<dynamic> R) {
  if (L.length > R.length) {
    var l = L.sublist(0, R.length);
    var r = L.sublist(R.length);
    return R + splitArray(r, l);
  } else if (L.length < R.length) {
    var l = R.sublist(0, R.length - L.length);
    var r = R.sublist(R.length - L.length);
    return splitArray(r, l) + L;
  } else {
    return R + L;
  }
}

List<dynamic> rotateArray(List<dynamic> xs, int d) {
  if (xs.length > d) {
    var leftArray = xs.sublist(0, d);
    var rightArray = xs.sublist(d);
    return splitArray(leftArray, rightArray);
  } else {
    print("no. of elements to be rotated are more than the length of the list");
    return xs;
  }
}

void main() {
  var x = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  print(rotateArray(x, 5));
}
