// Custom exceptions to handle various firebase authentication-related errors //
class TFormatException implements Exception {
  // The error code associated with the exception //
  final String message;
  // Constructor that takes on error code //
  const TFormatException(
      [this.message =
          "An unexpected format error occurred.Please check your input "]);
  // Create a format exception from a specific
  // error message //
  factory TFormatException.formMessage(String message) {
    return TFormatException(message);
  }

  // Get the corresponding error message on the error code //
  String get formattedMessage => message;
  // Create a format exception from a specific error code //
  factory TFormatException.formCode(String code) {
    switch (code) {
      case 'invalid-email-address':
        return const TFormatException(
            'The email address format is invalid.Please enter a valid email.');

      case 'invalid-phone-number':
        return const TFormatException(
            'The provider phone number format is invalid.Please a valid number.');
      case 'invalid-url-format':
        return const TFormatException(
            'The URl format is invaild.Please enter a vaild URL.');
      case 'invalied-date-format':
        return const TFormatException(
            'The date format is invalid.Please enter a vaild date.');
      case 'invalid-credit-card-format':
        return const TFormatException(
            'The credit card format is invalid.Please enter a valid credit card number.');
      case 'invalid-numeric-fomat':
        return const TFormatException(
            'The input should be a valid numeric format.');
      default:
        return const TFormatException();
    }
  }
}
