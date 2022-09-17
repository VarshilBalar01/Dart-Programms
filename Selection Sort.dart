void main() {
  List list1 = [64, 25, 12, 23, 11];
  for (int i = 0; i < 5; i++) {
    int key = i;
    for (int j = i + 1; j < 5; j++) {
      if (list1[key] > list1[j]) {
        int temp = list1[key];
        list1[key] = list1[j];
        list1[j] = temp;
      }
    }
  }
  print(list1);
}
