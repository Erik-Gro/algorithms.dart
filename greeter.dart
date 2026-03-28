import 'dart:io';

void main() {
  String firstName = promptInput("First name:");
  String lastName = promptInput("Last name:"); 
  
  int age = promptAge(); 
  String gender = promptGender(); 

  if (age < 40) {
    print("Hallo, $firstName!"); 
  } else {
    String greeting = getTimeGreeting(); 
    String title = (gender.toLowerCase() == 'm') ? "Herr" : "Frau"; 
    print("$greeting, $title $lastName"); 
  }
}

String promptInput(String label) {
  while (true) {
    stdout.write(label);
    String? input = stdin.readLineSync(); 
    if (input != null && input.trim().isNotEmpty) return input.trim();
    stdout.write("Invalid input. Please do not leave empty.");
  }
}

int promptAge() {
  while (true) {
    stdout.write("Age (0-150):");
    String? input = stdin.readLineSync();
    int? age = int.tryParse(input ?? ""); 
    if (age != null && age >= 0 && age <= 150) return age; 
    stdout.write("Please enter a valid number between 0 and 150.");
  }
}

String promptGender() {
  while (true) {
    stdout.write("Gender (M/F):");
    String? input = stdin.readLineSync()?.toUpperCase();
    if (input == 'M' || input == 'F') return input!;
    stdout.write("Please enter M or F.");
  }
}

String getTimeGreeting() {
  int hour = DateTime.now().hour; 
  if (hour < 11) return "Guten Morgen"; 
  if (hour < 18) return "Guten Tag"; 
  return "Guten Abend";
}