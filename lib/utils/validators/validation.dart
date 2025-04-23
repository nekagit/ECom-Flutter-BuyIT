class TValidator {
  // Email validation
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  // Password validation
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    // Check for at least one uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    // Check for at least one number
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    }

    return null;
  }

  // Name validation
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required.';
    }

    if (value.length < 2) {
      return 'Name must be at least 2 characters long.';
    }

    return null;
  }

  // Phone number validation
  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    // Remove any non-digit characters for validation
    final digitsOnly = value.replaceAll(RegExp(r'\D'), '');

    if (digitsOnly.length < 10) {
      return 'Please enter a valid phone number.';
    }

    return null;
  }

  // Address validation
  static String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Address is required.';
    }

    if (value.length < 5) {
      return 'Please enter a valid address.';
    }

    return null;
  }

  // Postal/Zip code validation
  static String? validatePostalCode(String? value) {
    if (value == null || value.isEmpty) {
      return 'Postal code is required.';
    }

    // Basic format check - you may need to adjust based on your country requirements
    if (!RegExp(r'^\d{5}(-\d{4})?$').hasMatch(value) && // US format
        !RegExp(r'^[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d$').hasMatch(value)) { // Canadian format
      return 'Please enter a valid postal code.';
    }

    return null;
  }

  // Credit card number validation
  static String? validateCreditCardNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Credit card number is required.';
    }

    // Remove any spaces or dashes
    final cleanedValue = value.replaceAll(RegExp(r'[\s-]'), '');

    // Check if contains only digits
    if (!RegExp(r'^\d+$').hasMatch(cleanedValue)) {
      return 'Credit card number can only contain digits.';
    }

    // Check length (most credit cards are between 13-19 digits)
    if (cleanedValue.length < 13 || cleanedValue.length > 19) {
      return 'Please enter a valid credit card number.';
    }

    // Implement Luhn algorithm for credit card validation
    int sum = 0;
    bool alternate = false;
    for (int i = cleanedValue.length - 1; i >= 0; i--) {
      int digit = int.parse(cleanedValue[i]);
      if (alternate) {
        digit *= 2;
        if (digit > 9) {
          digit -= 9;
        }
      }
      sum += digit;
      alternate = !alternate;
    }

    if (sum % 10 != 0) {
      return 'Invalid credit card number.';
    }

    return null;
  }

  // CVV validation
  static String? validateCVV(String? value) {
    if (value == null || value.isEmpty) {
      return 'CVV is required.';
    }

    if (!RegExp(r'^\d{3,4}$').hasMatch(value)) {
      return 'CVV must be 3 or 4 digits.';
    }

    return null;
  }

  // Date validation for expiry dates (MM/YY)
  static String? validateExpiryDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Expiry date is required.';
    }

    // Check format
    if (!RegExp(r'^\d{2}/\d{2}$').hasMatch(value)) {
      return 'Use format MM/YY.';
    }

    final parts = value.split('/');
    final month = int.tryParse(parts[0]);
    final year = int.tryParse(parts[1]);

    // Validate month
    if (month == null || month < 1 || month > 12) {
      return 'Invalid month.';
    }

    // Validate year with current date
    if (year == null) {
      return 'Invalid year.';
    }

    final currentYear = DateTime.now().year % 100;
    final currentMonth = DateTime.now().month;

    if (year < currentYear || (year == currentYear && month < currentMonth)) {
      return 'Card has expired.';
    }

    return null;
  }

  // Product quantity validation
  static String? validateQuantity(String? value) {
    if (value == null || value.isEmpty) {
      return 'Quantity is required.';
    }

    final quantity = int.tryParse(value);
    if (quantity == null || quantity <= 0) {
      return 'Please enter a valid quantity.';
    }

    return null;
  }

  // General required field validation
  static String? validateRequired(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    }
    return null;
  }
}