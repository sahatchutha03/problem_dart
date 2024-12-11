// ฟังก์ชันเพื่อคำนวณค่าต่ำสุด, ค่าสูงสุด, และค่าเฉลี่ย
double calculateMinMaxAverage(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception('The list cannot be empty');
  }

  
  int min = numbers.reduce((a, b) => a < b ? a : b);
  int max = numbers.reduce((a, b) => a > b ? a : b);

 
  double average = numbers.reduce((a, b) => a + b) / numbers.length;

 
  print('Minimum: $min');
  print('Maximum: $max');
  print('Average: $average');

  return 0; 
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  calculateMinMaxAverage(numbers);  
}