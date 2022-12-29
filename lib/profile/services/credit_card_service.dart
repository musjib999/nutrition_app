String getLastFourDigits(int cardNumber){
  String number = cardNumber.toString();
  number.substring(number.length -4);
  return '**** **** **** ${number.substring(number.length -4)}';
}