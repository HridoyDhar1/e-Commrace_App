// ignore_for_file: unused_import

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommeraceapp/data/repositories/authentication/authentication_repositry.dart';
import 'package:ecommeraceapp/utils/exceptions/tfirebase_exception.dart';
import 'package:ecommeraceapp/utils/exceptions/platform_exception.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../features/personalization/models/user_model.dart';
import '../../../utils/exceptions/format_exception.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Function to save user data to Firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("User").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException(); // Fixed typo and thrown exception message
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  // Funcation to fetch user details //
  Future<UserModel> fetchUserDetails() async {
    try {
      final documnetSnapshot = await _db
          .collection("User")
          .doc(AuthenticationRepository.instance.authUser?.uid)
          .get();
      if (documnetSnapshot.exists) {
        return UserModel.formSnapshot(documnetSnapshot);
      } else {
        return UserModel.empty();
      }
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException(); // Fixed typo and thrown exception message
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  // Funcation update user data //
  Future<void> updateUserDetails(UserModel updateUser) async {
    try {
      await _db
          .collection("User")
          .doc(updateUser.id)
          .update(updateUser.toJson());
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException(); // Fixed typo and thrown exception message
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  //  Update any field in spceific user collection //
  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db
          .collection("User")
          .doc(AuthenticationRepository.instance.authUser?.uid)
          .update(json);
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException(); // Fixed typo and thrown exception message
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

// Funcation to remove the data from firestore //
  Future<void> removeUserRecord(String userId) async {
    try {
      await _db.collection("Users").doc(userId).delete();
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const TFormatException(); // Fixed typo and thrown exception message
    } on PlatformException catch (e) {
      throw TPlatformException(e.code);
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }
}
