// https://www.geeksforgeeks.org/array-rotation/
// Problem : Given an array of integers arr[] of size N and an integer, the task is to rotate the array elements to the left by d positions.

// Using Temp array

List<dynamic> rotateArray(List<int> _list, int d) {
  var tempList = [];
  tempList = _list.sublist(d);
  tempList += _list.sublist(0, d);
  return tempList;
}

void main() {
  var list = [1, 2, 3, 4, 5, 6, 7];
  return print(rotateArray(list, 2));
}
