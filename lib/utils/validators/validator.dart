class TVaildator {
  // Empty text validation //
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    }
    return null;
  }

  static String? vaildateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    // Regular expression for email validation //
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-\.]+[\w-]{2,4})$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    // Check for minimun password length //
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    // Check for special characters //
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercse letter';
    }
    // Check for numbers //
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must  contain at least one number.';
    }
    // Check for special characters //
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}<>]'))) {
      return ' Password must contain at least one special character ';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    // Check for minimun password length //
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Inavild phone number format (10 digits required)';
    }
    return null;
  }
}
