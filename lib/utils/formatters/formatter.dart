import 'package:intl/intl.dart';

class TFormatter {
  /// Format date as dd-MM-yyyy
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  /// Format currency in US format, e.g. $1,000.00
  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  /// Format 10-digit or 11-digit US phone numbers
  static String formatPhoneNumber(String phoneNumber) {
    // Remove non-digit characters
    phoneNumber = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 1)}) ${phoneNumber.substring(1, 4)}-${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7)}';
    }

    // Return original if format is not recognized
    return phoneNumber;
  }

  /// International phone number formatting (basic version)
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove all non-digit characters
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.length < 7) return phoneNumber; // Too short

    // Try to extract country code (assume up to 3 digits for simplicity)
    String countryCode = '+';
    int i = 0;

    // We'll assume the first 1-3 digits are the country code (crude method)
    while (i < 3 && i < digitsOnly.length && int.tryParse(digitsOnly[i]) != null) {
      countryCode += digitsOnly[i];
      i++;
    }

    // Remaining digits after country code
    String remaining = digitsOnly.substring(i);

    // Basic grouping (you can customize this further)
    final buffer = StringBuffer();
    buffer.write('($countryCode) ');

    for (int j = 0; j < remaining.length; j += 3) {
      int end = (j + 3 < remaining.length) ? j + 3 : remaining.length;
      buffer.write(remaining.substring(j, end));
      if (end != remaining.length) buffer.write(' ');
    }

    return buffer.toString().trim();
  }
}
