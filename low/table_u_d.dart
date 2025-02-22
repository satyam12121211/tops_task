import 'dart:io';

int? ASCENDING(int a) {
  print('print table ASCENDING ');
  for (int i = 1; i <= 10; i++) {
    print('$a*$i=${a * i}');
  }
  return null;
}

int? DSCENDING(int a) {
  print('print table DSCENDING ');
  for (int i = 10; i >= 1; i--) {
    print('$a*$i=${a * i}');
  }
  return null;
}

void main() {
  print('enter number');
  int a = int.parse(stdin.readLineSync()!);
  ASCENDING(a);
  DSCENDING(a);
}
