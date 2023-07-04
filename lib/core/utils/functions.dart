String currentPriceFormate(int price, double discountPercentage) {
  String newPrice = (price - (price * discountPercentage ~/ 100)).toString();
  return "EGP $newPrice";
}
