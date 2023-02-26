import 'dart:math';

void main() {
  int passwordLength = 10; 
  String password = generateRandomPassword(passwordLength);
  print('Mật khẩu của bạn là: $password');
}

String generateRandomPassword(int length) {
  final random = Random();
  const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#\$%^&*()_-+=[{]}|:;"<>,.?/';
  final passwordCharacters = List.generate(length, (index) => chars[random.nextInt(chars.length)]);
  passwordCharacters.shuffle();
  final password = passwordCharacters.join();
  return password;
}
