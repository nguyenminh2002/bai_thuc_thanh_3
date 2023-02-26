import 'dart:io';
double pow(double a, double b){
  if(b == 0 ) return 1;
  double result = 1;
  for(int i = 1; i <= b; i++){
    result *= a;
  }
  return result;
}
void main(){
  print("Nhập số: ");
  double a = double.parse(stdin.readLineSync()!);
  print('Nhập số mũ: ');
  double b = double.parse(stdin.readLineSync()!);
  print('Kết quả là ${pow(a, b)}');
}
  
