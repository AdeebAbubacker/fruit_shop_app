import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String uid;
  final String email;
  final String name;
  final DateTime lastSignIn;

  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    required this.lastSignIn,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      uid: data['uid'],
      email: data['email'],
      name: data['name'],
      lastSignIn: (data['lastSignIn'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'lastSignIn': lastSignIn,
    };
  }
}
