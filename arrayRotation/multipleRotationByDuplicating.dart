// https://www.geeksforgeeks.org/quickly-find-multiple-left-rotations-of-an-array/

List<dynamic> arrayRotation(List<dynamic> xs, int k) {
  var i = k % xs.length;
  var j = i + xs.length;
  var temp_list = xs + xs;
  return temp_list.sublist(i, j);
}

void main() {
  var x = [1, 2, 3, 4, 5, 6, 7];
  print(arrayRotation(x, 51));
}
