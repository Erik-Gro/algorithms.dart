import 'dart:io';

void main(List<String> arguments) {
  String input;

  if (arguments.isNotEmpty) {
    input = arguments[0];
  } else {
    stdout.write('Enter a string to compress: ');
    input = stdin.readLineSync() ?? '';
  }

  if (input.isEmpty) return;
  print(compressed(input));
}

String compressed(String string) {
  String result = "";

  for (int i = 0; i < string.length;) {
    int count = 1;
    String left = string[i];
    int j = i + 1;

    while (j <= string.length - 1) {
      if (string[j] == left) {
        count++;
        j++;
        continue;
      }
      break;
    }

    switch (count) {
      case > 2:
        result += '$left$count';
      case == 2:
        result += '$left$left';
      default:
        result += left;
    }
    i = j;
  }
  return result;
}
