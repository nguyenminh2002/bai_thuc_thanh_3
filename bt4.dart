import 'dart:io';
double CircleArea(double r){
  const pi = 3.14159265;
  double Area = pi * r * r;
  return Area;
}
void main(){
  print('Nhập bán kính: ');
  double r = double.parse(stdin.readLineSync()!);
  double ketqua = CircleArea(r);
  print('Diẹn tích hình tròn là : $ketqua');
}
