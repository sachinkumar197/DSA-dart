// https://www.geeksforgeeks.org/find-repetitive-element-1-n-1/?ref=lbp

int searchElem(List<int> xs) {
  var sumOfNElems = (xs.length * (xs.length - 1)) ~/ 2;
  var sumOfArray = xs.reduce((a, b) => a + b);
  return sumOfArray - sumOfNElems;
}

void main(List<dynamic> xs) {
  var arr = [9, 8, 2, 6, 1, 8, 5, 3, 4, 7];
  print(searchElem(arr));
}
