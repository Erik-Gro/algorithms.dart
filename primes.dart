


import 'dart:io';

void main() {
  stdout.write('Enter a number to know if it\'s prime: ');

  String input = stdin.readLineSync() ?? '';
  int number = int.parse(input);

  List<int> dividables = [];

  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      dividables.add(i);
    }
  }
  if (dividables.isEmpty) {
    print('$number is a prime number.');
  } else {
    print('$number is not a prime number, it can be divided by: ${dividables.join(', ')} and itself.');
  }
}