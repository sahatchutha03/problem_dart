void main() {

  Map<String, double> exchangeRates = {
    'USD': 0.032, // 1 THB = 0.032 USD
    'EUR': 0.029, // 1 THB = 0.029 EUR
    'JPY': 4.38,  // 1 THB = 4.38 JPY
    'GBP': 0.027, // 1 THB = 0.027 GBP
  }; 
  double amountInTHB = 10000; 

  String targetCurrency = 'EUR'; 

  double convertedAmount = convertCurrency(amountInTHB, targetCurrency, exchangeRates);
  
 
  print('$amountInTHB THB = $convertedAmount $targetCurrency');
}


double convertCurrency(double amount, String targetCurrency, Map<String, double> rates) {
  
  if (rates.containsKey(targetCurrency)) {
    return amount * rates[targetCurrency]!;
  } else {
    print('สกุลเงินไม่ถูกต้อง');
    return 0.0;
  }
}