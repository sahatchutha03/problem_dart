import 'dart:io';

bool isPrime(int number) {
  if (number <= 1) {
    return false; 
  }
  
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false; 
    }
  }
  return true; 
}
void main() {
   print("Enter a number to check if it's a prime number:");
  int? number = int.tryParse(stdin.readLineSync()!);
  
  if (number == null) {
    print("Invalid input! Please enter a valid number.");
    return;
  }
if (isPrime(number)) {
    print("$number is a prime number.");
  } else {
    print("$number is not a prime number.");
  }
}