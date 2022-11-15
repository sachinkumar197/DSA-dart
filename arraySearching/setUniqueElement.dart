// https://www.geeksforgeeks.org/find-element-appears-array-every-element-appears-twice/?ref=lbp

int searchElem(List<dynamic> xs) {
  var dedupList = {...xs};
  var sum1 = dedupList.reduce((a, b) => a + b);
  var sum2 = xs.reduce((a, b) => a + b);
  var temp = (sum1 * 2) - sum2;
  return temp;
}

void main() {
  List<dynamic> x = [1, 1, 2, 2, 3, 4, 4, 5, 5];
  print(searchElem(x));
}
