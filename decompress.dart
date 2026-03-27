



import 'dart:io';

void main() {
  stdout.write('Enter a string to decompress: ');
  String input = stdin.readLineSync() ?? '';
  print(decompress(input));
}

String decompress(String string){
  String result = "";

  for(int i = 0; i < string.length -1; i++) {
    if(int.tryParse(string[i+1]) != null) {
      int counter = int.parse(string[i+1]);
      for(int j = 0; j < counter; j++) {
        result += string[i];
      }
      i++;
      continue;
    }
    if(string[i] == string[i+1]) {
      result += string[i];
      continue;
    }
    result += string[i];
  }
  return result;
}