import 'dart:io';

void main() {
  stdout.write('Enter a string to decompress: ');
  String input = stdin.readLineSync() ?? '';
  print(decompress(input));
}

String decompress(String string) {
  String result = "";
  print(string.length);
  for (int i = 0; i < string.length; i++) {
    // if (i + 1 == string.length) {
    //   result += string[i];
    //   continue;
    // }
    String stringRepetitions = '';
    String char = string[i];
    // int right = i +1;
    print(i);
    while (i < string.length - 1 && int.tryParse(string[i + 1]) != null) {
      stringRepetitions += string[i + 1];
      i++;
      // print(i);
      // right++;
    }

    int numberstringRepetitions = 0;

    if (stringRepetitions != '') {
      numberstringRepetitions = int.parse(stringRepetitions);
    }
    // i += repetitions.length -1;
    if (numberstringRepetitions != 0) {
      // int counter = int.parse(string[i + 1]);
      for (int j = 0; j < numberstringRepetitions; j++) {
        result += char;
      }
      // i++;
      continue;
    }
    if (i +1 == string.length) {
      result += string[i];
      continue;
    }
    result += string[i];
    // i++;
  }
  return result;
}
