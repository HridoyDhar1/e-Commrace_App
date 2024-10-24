import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String profilePicture;
  String phoneNumber;

  UserModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.profilePicture,
    required this.userName,
    required this.phoneNumber,
  });

  String get fullName => '$firstName $lastName';

  static List<String> nameParts(String fullName) => fullName.split(" ");

  static String generateUserName(String fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";
    String camelCaseUserName = "$firstName$lastName";
    String userNameWithPrefix = "cwt_$camelCaseUserName";
    return userNameWithPrefix;
  }

  static UserModel empty() => UserModel(
        id: "",
        email: "",
        firstName: "",
        lastName: "",
        profilePicture: "",
        userName: "",
        phoneNumber: "",
      );

  Map<String, dynamic> toJson() {
    return {
      "FirstName": firstName,
      "LastName": lastName,
      "UserName": userName,
      "Email": email,
      "PhoneNumber": phoneNumber,
      "ProfilePicture": profilePicture, // Corrected typo
    };
  }

  factory UserModel.formSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        email: data['Email'] ?? '',
        firstName: data['FirstName'] ?? '',
        lastName: data['LastName'] ??
            '', // Corrected 'LastName' instead of 'FirstName'
        profilePicture: data['ProfilePicture'] ?? '',
        userName: data['UserName'] ?? '',
        phoneNumber: data['PhoneNumber'] ?? '',
      );
    }
    // Added return statement to handle the case where document data is null
    return UserModel.empty();
  }
}
