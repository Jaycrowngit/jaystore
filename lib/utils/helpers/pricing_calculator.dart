
class TPricingCalculator {
  /// --- Calculate total price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// --- Calculate shipping cost as formatted string
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// --- Calculate tax as formatted string
  static String calculateTax(double productPrice, String location) {
    double taxAmount = productPrice * getTaxRateForLocation(location);
    return taxAmount.toStringAsFixed(2);
  }

  /// --- Returns tax rate for a location
  static double getTaxRateForLocation(String location) {
    // Placeholder: You could use a real tax API or database here.
    return 0.10; // 10% tax
  }

  /// --- Returns shipping cost for a location
  static double getShippingCost(String location) {
    // Placeholder: Replace with actual logic or API for real use.
    return 5.00; // Fixed shipping cost
  }
/// -- Sum all cart values and return total amount
// static double calculateCartTotal(CartModel cart) {
//   return cart.items
//       .map((e) => e.price ?? 0)
//       .fold(0.0, (previousPrice, currentPrice) => previousPrice + currentPrice);
// }
}


 
