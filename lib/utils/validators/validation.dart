class TValidator {
  // Email Validation
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }

    return null;
  }

  // Password Validation
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    final specialCharRegExp = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    if (!specialCharRegExp.hasMatch(value)) {
      return 'Password must contain at least one special character';
    }

    return null;
  }

  // Confirm Password Validation
  static String? validateConfirmPassword(String? password, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'Please confirm your password';
    }

    if (password != confirmPassword) {
      return 'Passwords do not match';
    }

    return null;
  }

  // Phone Number Validation (10-digit format)
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required)';
    }

    return null;
  }

  // Name Validation (no numbers or special characters)
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }

    final nameRegExp = RegExp(r"^[a-zA-Z\s'-]+$");

    if (!nameRegExp.hasMatch(value)) {
      return 'Name can only contain letters and spaces';
    }

    return null;
  }

  // Username Validation (alphanumeric, underscores, 3-20 chars)
  // static String? validateUsername(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Username is required';
  //   }

  //   final usernameRegExp = RegExp(r'^[a-zA-Z0-9_]{3,20}$');

  //   if (!usernameRegExp.hasMatch(value)) {
  //     return 'Username must be 3-20 characters (letters, numbers, underscores)';
  //   }

  //   return null;
  // }

  // // ZIP Code Validation (5-digit or 5+4 format)
  // static String? validateZipCode(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'ZIP code is required';
  //   }

  //   final zipRegExp = RegExp(r'^\d{5}(-\d{4})?$');

  //   if (!zipRegExp.hasMatch(value)) {
  //     return 'Invalid ZIP code format';
  //   }

  //   return null;
  // }

  // // Generic Required Field Validator
  // static String? validateRequired(String? value, {String fieldName = 'Field'}) {
  //   if (value == null || value.trim().isEmpty) {
  //     return '$fieldName is required';
  //   }
  //   return null;
  // }

  // // Date of Birth Validation (must not be in future)
  // static String? validateDateOfBirth(DateTime? dob) {
  //   if (dob == null) {
  //     return 'Date of birth is required';
  //   }

  //   if (dob.isAfter(DateTime.now())) {
  //     return 'Date of birth cannot be in the future';
  //   }

  //   return null;
  // }

  // // Age Validation (e.g., minimum 18 years old)
  // static String? validateAge(DateTime? dob, {int minAge = 18}) {
  //   if (dob == null) {
  //     return 'Date of birth is required';
  //   }

  //   final today = DateTime.now();
  //   final age = today.year - dob.year -
  //       ((today.month < dob.month ||
  //               (today.month == dob.month && today.day < dob.day))
  //           ? 1
  //           : 0);

  //   if (age < minAge) {
  //     return 'You must be at least $minAge years old';
  //   }

  //   return null;
  // }

  // // URL Validation
  // static String? validateUrl(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'URL is required';
  //   }

  //   final urlRegExp = RegExp(
  //     r'^(https?:\/\/)?([\w\-])+\.{1}([a-zA-Z]{2,63})([\/\w\-]*)*\/?$',
  //   );

  //   if (!urlRegExp.hasMatch(value)) {
  //     return 'Invalid URL';
  //   }

  //   return null;
  // }

  // // Credit Card Number Validation (basic Luhn check not included here)
  // static String? validateCreditCard(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Credit card number is required';
  //   }

  //   final cardRegExp = RegExp(r'^[0-9]{13,19}$');

  //   if (!cardRegExp.hasMatch(value)) {
  //     return 'Invalid credit card number';
  //   }

  //   return null;
  // }

  // // CVV Validation (3 or 4 digits)
  // static String? validateCVV(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'CVV is required';
  //   }

  //   final cvvRegExp = RegExp(r'^\d{3,4}$');

  //   if (!cvvRegExp.hasMatch(value)) {
  //     return 'Invalid CVV';
  //   }

  //   return null;
  // }

  // // Expiry Date (MM/YY format)
  // static String? validateExpiryDate(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Expiry date is required';
  //   }

  //   final expRegExp = RegExp(r'^(0[1-9]|1[0-2])\/\d{2}$');

  //   if (!expRegExp.hasMatch(value)) {
  //     return 'Invalid expiry date format (MM/YY)';
  //   }

  //   // Optional: parse the date and check if expired
  //   final parts = value.split('/');
  //   final month = int.tryParse(parts[0]);
  //   final year = int.tryParse(parts[1]);
  //   if (month == null || year == null) {
  //     return 'Invalid expiry date';
  //   }

  //   final now = DateTime.now();
  //   final expiry = DateTime(2000 + year, month + 1); // Add 1 month to expire at end
  //   if (expiry.isBefore(now)) {
  //     return 'Card has expired';
  //   }

  //   return null;
  // }
}


// Validator	                     Purpose

// validateEmail	               Validates email format
// validatePassword             	Enforces password rules
// validateConfirmPassword	      Confirms both passwords match
// validatePhoneNumber	          Validates 10-digit phone number
// validateName	Names             with letters and spaces only
// validateUsername	              Alphanumeric username (3–20 chars)
// validateZipCode	              US ZIP code format
// validateRequired	                Generic required field
// validateDateOfBirth	          DOB must not be in future
// validateAge	                  Ensures user is above minimum age
// validateUrl	                Checks for valid URL structure
// validateCreditCard	          Validates credit card number format
// validateCVV                  	3–4 digit CVV check
// validateExpiryDate	          Validates MM/YY format & expiration