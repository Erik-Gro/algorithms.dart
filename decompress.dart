



import 'dart:io';

void main() {
  stdout.write('Enter a string to decompress: ');
  String input = stdin.readLineSync() ?? '';
  print(decompress(input));
}

String decompress(String string) {
  if (string.isEmpty) return "";

  String result = "";
  
  for (int i = 0; i < string.length; i++) {
    String currentLetter = string[i];
    String fullNumber = "";

    while (i + 1 < string.length && int.tryParse(string[i + 1]) != null) {
      fullNumber += string[i + 1];
      i++; 
    }

    if (fullNumber.isEmpty) {
      result += currentLetter;
    } else {
      int multiplier = int.parse(fullNumber);
      for (int j = 0; j < multiplier; j++) {
        result += currentLetter;
      }
    }
  }
  return result;
}