import 'dart:io';
import 'dart:math';

void main() {
  print('Nhập độ dài cạnh a: ');
  double a = double.parse(stdin.readLineSync()!);
  
  print('Nhập độ dài cạnh b: ');
  double b = double.parse(stdin.readLineSync()!);
  
  print('Nhập độ dài cạnh huyền c: ');
  double c = double.parse(stdin.readLineSync()!);
  
  if (isRightTriangle(a, b, c)) {
    if (isPythago(a, b, c)) {
      print('Tam giác có cạnh a = $a, b = $b, c = $c là tam giác vuông và thỏa mãn định lý Pythagore.');
    } else {
      print('Tam giác có cạnh a = $a, b = $b, c = $c là tam giác vuông nhưng không thỏa mãn định lý Pythagore.');
    }
  } else {
    print('Tam giác có cạnh a = $a, b = $b, c = $c không phải là tam giác vuông.');
  }
}

bool isRightTriangle(double a, double b, double c) {
  List<double> sides = [a, b, c];
  sides.sort();
  
  return pow(sides[0], 2) + pow(sides[1], 2) == pow(sides[2], 2);
}

bool isPythago(double a, double b, double c) {
  return pow(c, 2) == pow(a, 2) + pow(b, 2);
}
