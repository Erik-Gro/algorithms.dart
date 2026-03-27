


import 'dart:io';

void main() {
  stdout.write('Enter a string to compress: ');
  String input = stdin.readLineSync() ?? '';
  print(compressed(input));
}

String compressed(String string) {
  String compressed = "";
  String letter = string[0];
  int middlePointer = 1;
  int counter = 1;
  int finding = 0;

  while (middlePointer < string.length) {
    if (string[middlePointer] == string[finding]) {
      counter++;
    } if (string[middlePointer] != string[finding]) {
      if(counter == 1) {
        compressed += letter;
      }
      else if (counter == 2) {
        compressed += '$letter$letter';
      }
       else {
        compressed += '$letter$counter';
      }
      letter = string[middlePointer];
      finding = middlePointer;
      counter = 1;
       }
    if (middlePointer == string.length - 1) {
      if(counter == 1) {
        compressed += letter;
      }
      else if (counter == 2) {
        compressed += '$letter$letter';
      }
       else {
        compressed += '$letter$counter';
      }
    }
    middlePointer++;
  }
  return compressed;
}