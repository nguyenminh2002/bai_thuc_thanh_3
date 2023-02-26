import 'dart:io';

void main() {
  stdout.write("Nhập vào một chuỗi: ");
  String s = stdin.readLineSync()!;
  String reversedString = String.fromCharCodes(s.runes.toList().reversed);
  print("Chuỗi đảo ngược: $reversedString");
}
