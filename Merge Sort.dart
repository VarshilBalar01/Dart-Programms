import 'dart:io';

void merge(List list, int l, int m, int r) {
  int n1 = m - l + 1;
  int n2 = r - m;

  List L = [];
  List R = [];

  for (int i = 0; i < n1; i++) L[i] = list[l + i];
  for (int j = 0; j < n2; j++) R[j] = list[m + j + 1];

  int i = 0, j = 0;
  int k = l;

  while (i < n1 && j < n2) {
    if (L[i] <= R[j]) {
      list[k] = L[i];
      i++;
    } else {
      list[k] = R[j];
      j++;
    }
    k++;
  }

  while (i < n1) {
    list[k] = L[i];
    i++;
    k++;
  }

  while (j < n2) {
    list[k] = R[j];
    j++;
    k++;
  }
}

void mergeSort(List list, int l, int r) {
  if (l < r) {
    int m = (r + l) ~/ 2;

    mergeSort(list, l, m);
    mergeSort(list, m + 1, r);
    merge(list, l, m, r);
  }
}

void main(){
  List list1 = [];
  stdout('Enter number of element : ')
  int n = int.parse(stdio.readLineSync());
  print('Enter elements : ');
  for(int i=0;i<n;i+){
    int e = int.parse(stdio.readLineSync());
    list1.add(e);
  }
  mergeSort(list1, 0, n-1);
  print(list1);
}
