import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  final String id;
  final String name;
  final String password;
  final String section;
  final String email;
  final String role;
  final String token;

  User(this.id, this.name, this.password, this.section, this.email, this.role,
      this.token);
}