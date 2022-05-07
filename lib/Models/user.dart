import 'dart:io';

class User{
  int id;
  String firstName;
  String lastName;
  String phoneNumber;
  String email;
  File profile;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.profile
  });
}

