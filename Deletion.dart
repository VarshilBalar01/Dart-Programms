void main() {
  List list1 = [1, 4, 5, 6, 2, 4, 5, 6, 3, 4, 5, 6];
  List list2 = [4, 5, 6];
  List list4 = [];
  List list5 = [];

  //1
  var element = list1.where((x) => (list2.contains(x) == false));
  List list3 = element.toList();
  print(list3);

  //2
  for (int i = 0; i < list1.length; i++) {
    if (list2.contains(list1[i]) == false) {
      list4.add(list1[i]);
    }
  }
  print(list4);

  //3
  list1.forEach((x) => {
        if (list2.contains(x) == false) {list5.add(x)}
      });
  print(list5);

  //4
  Set set1 = list1.toSet();
  List new_list = set1.toList();

  for (int i = 0; i < list2.length; i++) {
    new_list.remove(list2[i]);
  }
  print(new_list);
}
