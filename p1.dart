import 'dart:io';

void main() {
  print('กรุณากรอกจำนวนสินค้าที่ซื้อ:');
  int quantity = int.parse(stdin.readLineSync()!);

  print('กรุณากรอกราคาต่อหน่วย:');
  double pricePerUnit = double.parse(stdin.readLineSync()!);
  double totalPrice = quantity * pricePerUnit;
  double discount = 0.0;
 
  if (quantity >= 10) {
    discount = 0.20;  
  } else if (quantity >= 5) {
    discount = 0.10;  
  }
  double discountedPrice = totalPrice * (1 - discount);


  print('ราคาก่อนส่วนลด: ${totalPrice.toStringAsFixed(2)} บาท');
  print('ส่วนลด: ${(discount * 100).toStringAsFixed(0)}%');
  print('ราคาหลังจากหักส่วนลด: ${discountedPrice.toStringAsFixed(2)} บาท');
}