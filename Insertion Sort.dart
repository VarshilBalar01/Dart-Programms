void main() {
  List list1 = [7, 6, 5, 4, 3, 2];
  print('Unsorted List : ${list1}');
  int n = list1.length;
  int i = 0, key = 0, j = 0;
  for (i = 0; i < n; i++) {
    key = list1[i];
    j = i - 1;
    while (j >= 0 && list1[j] > key) {
      list1[j + 1] = list1[j];
      j = j - 1;
    }
    list1[j + 1] = key;
  }
  print('Sorted List : ${list1}');
}
