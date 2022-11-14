// https://www.geeksforgeeks.org/find-element-appears-array-every-element-appears-twice/?ref=lbp

int searchElem(List<dynamic> xs) {
  var _hash = Map<int, int>();
  for (var i = 0; i < xs.length; i++) {
    if (_hash.containsKey(_hash[xs[i]])) {
      _hash[xs[i]] = _hash[xs[i]]! + 1;
    } else {
      _hash[xs[i]] = 1;
    }
  }
  int result = -1;
  _hash.forEach((key, value) {
    if (value == 1) {
      result = key;
    }
  });
  return result;
}

void main() {
  List<dynamic> x = [1, 1, 2, 2, 3, 4, 4, 5, 5];
  print(searchElem(x));
}
