// Custom exceptions to handle various firebase authentication-related errors //
class TPlatformException implements Exception {
  final String code;
  TPlatformException(this.code);
  String get message {
    switch (code) {
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invalid login credentials.Please double-check your information';
      case 'too-many-requests':
        return 'Too many requests.Please try again later';
      case 'invalid-password':
        return 'Incorrect-password';
      case 'invalid-argument':
        return 'Invalid argument provider to the authentication method';
      case 'invalied-phone-number':
        return 'The provider phone number is invalid';
      case 'operation-not-allowed':
        return 'The sing-in provier is disbaled for your Firebase project';
      case 'session-cookie-expired':
        return 'The Firebase session cookie has expired.Please sing in again';
      case 'uid-already-exists':
        return 'The provider user iD is alreday in use by another user';
      case 'sing-in-falied':
        return 'Sing-in failed.Please try again';
      case 'network-request-failed':
        return 'Netword request failed.Please check your internet connection';
      case 'internal-error':
        return 'Internal error.Please try again';
      case 'invalid-verification-code':
        return 'Invalid verification code.Please enter a valid code';
      case 'invalid-verification-id':
        return 'Invalid argument provider to the authentication method';
      default:
        return "An unexpected Firebase error occurred.Please try again.";
    }
  }
}
