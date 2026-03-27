

import 'dart:math';

int counter = 0;

final random = Random();

void main() {
  print(throwTwoDices());
}

 String throwTwoDices() {

  var firstThrow = throwDice();
  var secondThrow = throwDice();

  if (firstThrow == secondThrow && firstThrow == 6) {
    return 'It took $counter throws to get two sixes in a row!';
  }

  counter++;
  return throwTwoDices();
}

throwDice() {

  int num = random.nextInt(6) + 1;

  return num;
}