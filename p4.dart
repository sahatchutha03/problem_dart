import 'dart:io';

void main() {
 
  print("Enter a sentence:");
  String input = stdin.readLineSync()!;

  countWords(input);
}

void countWords(String input) {
  // แยกคำในประโยคโดยใช้ช่องว่างเป็นตัวแบ่งคำ
  List<String> words = input.split(RegExp(r'\s+')); 

  Set<String> uniqueWords = Set.from(words);

 
  print("Total Words: ${words.length}");
  print("Unique Words: ${uniqueWords.length}");
}
