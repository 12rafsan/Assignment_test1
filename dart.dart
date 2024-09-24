import 'dart:io';

void main() {

  stdout.write("Enter the temperature in Celsius: ");
  String? input = stdin.readLineSync();
  if (input != null) {
    try {
      double celsius = double.parse(input);
      double fahrenheit = (celsius * 9 / 5) + 32;
      print("Temperature in Fahrenheit: ${fahrenheit.toStringAsFixed(2)}");
    } catch (e) {
      print("Please enter a valid number.");
    }
  } else {
    print("No input received.");
  }
}




