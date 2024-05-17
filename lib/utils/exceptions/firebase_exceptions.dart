// Custom exceptions to handle various firebase authentication-related errors //
class TFirebaseAuthException implements Exception {
  // The error code associated with the exception //
  final String code;
  // Constructor that takes on error code //
  TFirebaseAuthException(this.code);
  // Get the corresponding error message on the error code //
  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The email address is already registered.Please use different email';
      case 'invaild-email':
        return 'The email address provided is invaild.Please enter a vaild email ';
      case 'weak-password':
        return 'The password is too weak.Please choose a stronger password.';
      case 'user-not-found':
        return 'This user account has been disabled.Please contact support for assistance.';
      case 'wrong-password':
        return 'Incorrect password.Please check your password and try again';
      case 'invalid-verification-code':
        return 'Invalid verification code.Please enter a valid code.';
      case 'quota-execeeded':
        return 'Quota exceeded.Please try again later';
      case 'email-alreday-exists':
        return ' The email address alreday exists.Please use a different email';
      case 'provider-alreday-linked':
        return 'The account is alreday linked with anther provider';
      case 'operation-not-allowed':
        return 'This operation is not allowd.Contact support for assistance.';
      case 'invalid-candential':
        return 'The supplied credential is malformed or has expired';
      case 'invalid-verificaton-code':
        return 'Invalid verification code.Please request a new verification code.';
      case 'invalied-verification-id':
        return 'Invalid verification ID.Please request a new verification code.';
      case 'captcha-check-failed':
        return 'The reCAPTCHA response if invalid.Please try agin';
      case 'app-not-authorized':
        return 'The appis not authorized to use Firebae Authenticaiton with the provider API key ';
      case 'keychain-error':
        return 'A keychain error occurred.Please check the keychain and try agian';
      case 'internal-error':
        return 'An ineranl authentication error occurred.Please try again later';
      case 'invalied-app-credential':
        return 'The account is alreday linked with anther provider';
      case 'sessoion-cookie-expired':
        return 'The Firebase session cookie has expired.Please sing in again';
      case 'uid-already-exists':
        return 'The provided user ID is alreday in use by anothe user.';
      case 'web-storage-unsupportd':
        return 'Web storage is not supported or is disabled.';
      case 'app-deleted':
        return 'This instance of FirebaseApp has been deleted.';
      case 'user-token-mismatch':
        return 'The provider uses\'s token has a mismatch with the authenticated user\'s user ID.';
      case 'INVALID_LOGIN_CREDENTIALS':
        return ' Invalied loign credentials';
      case 'epired-action-code':
        return 'The action code has expired.Please request a new action code';
      // Additional Firebase Auth errors
      case 'provider-not-found':
        return 'The specified provider is not enabled. Please check your Firebase configuration';
      case 'requires-recent-login':
        return 'This operation requires recent authentication. Please sign in again';
      case 'user-disabled':
        return 'This user account has been disabled. Please contact support for assistance';
      case 'user-token-expired':
        return 'The user\'s credential is no longer valid. Please sign in again';
      case 'credential-alreday-in-use':
        return 'The action code is invalied.Please check the code and try again';
      case 'too-many-requests':
        return 'Too many requests. Please try again later';
      case 'unauthorized-domain':
        return 'This operation is not allowed on this domain';
      case 'web-storage-unsupported':
        return 'This browser is not supported or 3rd party cookies and data may be disabled';
      default:
        return 'An unexpected Firebase error occurred.Please try again';
    }
  }
}
