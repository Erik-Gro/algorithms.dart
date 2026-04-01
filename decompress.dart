import 'dart:io';

void main() {
  stdout.write('Enter a string to decompress: ');
  String input = stdin.readLineSync() ?? '';
  print(decompress(input));
}

String decompress(String string) {
  String result = "";

  for (int i = 0; i < string.length; i++) {
    String char = string[i];
    String stringRepetitions = '';

    while (i + 1 < string.length && int.tryParse(string[i + 1]) != null) {
      stringRepetitions += string[i + 1];
      i++;
    }

    if (stringRepetitions.isNotEmpty) {
      int count = int.parse(stringRepetitions);
      for (int j = 0; j < count; j++) {
        result += char;
      }
      continue;
    }
    result += char;
  }
  return result;
}
