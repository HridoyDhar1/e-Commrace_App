import 'package:ecommeraceapp/features/authentication/screens/login_page/login_page.dart';
import 'package:ecommeraceapp/features/authentication/screens/singup_page/verify_email.dart';
import 'package:ecommeraceapp/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:ecommeraceapp/navigation_menu.dart';
import 'package:ecommeraceapp/utils/exceptions/platform_exception.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../utils/exceptions/firebase_exceptions.dart';
import '../../../utils/exceptions/format_exception.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  // Variables //
  final deviveStorage = GetStorage();
  final _auth = FirebaseAuth.instance;
  // Get Authentication user data //
  User? get authUser => _auth.currentUser;
  // Called from main.dart on app lanuch //
  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // Funcation to show releyant screen //
  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => const NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmail(
              email: _auth.currentUser?.email,
            ));
      }
    } else {
      deviveStorage.writeIfNull("isFirstTime", true);
      deviveStorage.read('isFirstTime') != true
          ? Get.offAll(() => const LoginPage())
          : Get.offAll(const OnBoardingScreen());
    }
  }

  /*-------------------------------------------------------Email & Password sing-in ---------------------------------------------------------------------------------*/
  // Email Authentication --SignIn
  Future<UserCredential> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException
      throw TFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      // Handle FormatException
      throw const TFormatException();
    } on PlatformException catch (e) {
      // Handle PlatformException
      throw TPlatformException(e.code).message;
    } catch (e) {
      // Handle other exceptions
      throw 'Something went wrong. Please try again';
    }
  }

  // Email Authentication --Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException
      throw TFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      // Handle FormatException
      throw const TFormatException();
    } on PlatformException catch (e) {
      // Handle PlatformException
      throw TPlatformException(e.code).message;
    } catch (e) {
      // Handle other exceptions
      throw 'Something went wrong. Please try again';
    }
  }

  // Email Authentication --MAIL VERIFICATION
  Future<void> sendEmailVerificaton() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException
      throw TFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      // Handle FormatException
      throw const TFormatException();
    } on PlatformException catch (e) {
      // Handle PlatformException
      throw TPlatformException(e.code).message;
    } catch (e) {
      // Handle other exceptions
      throw 'Something went wrong. Please try again';
    }
  }

// Forget Password //
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException
      throw TFirebaseAuthException(e.code).message;
    } on FormatException catch (_) {
      // Handle FormatException
      throw const TFormatException();
    } on PlatformException catch (e) {
      // Handle PlatformException
      throw TPlatformException(e.code);
    } catch (e) {
      // Handle other exceptions
      throw 'Something went wrong. Please try again';
    }
  }

  // Logout user //
  Future<void> logOut() async {
    try {
      await GoogleSignIn().signOut();
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => const LoginPage());
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException
      throw TFirebaseAuthException(e.code);
    } on FormatException catch (_) {
      // Handle FormatException
      throw const TFormatException();
    } on PlatformException catch (e) {
      // Handle PlatformException
      throw TPlatformException(e.code);
    } catch (e) {
      // Handle other exceptions
      throw 'Something went wrong. Please try again';
    }
  }

  /* ------------Fedrated identity & social sing in ---------------------------------*/
  // GoogleAuthentication //
  Future<UserCredential?> signInWithGoogle() async {
    try {
// Trigger the authentication flow //
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();
      //  Obtain the auth details from the request //
      final GoogleSignInAuthentication? googleAuth =
          await userAccount?.authentication;
      // Create a new credential //
      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);
      // Once singed in, return the UserCredential //
      return await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      // Handle FirebaseAuthException
      throw TFirebaseAuthException(e.code);
    } on FormatException catch (_) {
      // Handle FormatException
      throw const TFormatException();
    } on PlatformException catch (e) {
      // Handle PlatformException
      throw TPlatformException(e.code);
    } catch (e) {
      if (kDebugMode) print("Something went worng: $e");
      return null;
    }
  }
}
