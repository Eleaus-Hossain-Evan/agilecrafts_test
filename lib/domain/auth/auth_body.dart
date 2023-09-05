import 'dart:convert';

import 'package:equatable/equatable.dart';

class AuthBody extends Equatable {
  final String userNameOrEmailAddress;
  final String password;
  const AuthBody({
    required this.userNameOrEmailAddress,
    required this.password,
  });

  AuthBody copyWith({
    String? userNameOrEmailAddress,
    String? password,
  }) {
    return AuthBody(
      userNameOrEmailAddress:
          userNameOrEmailAddress ?? this.userNameOrEmailAddress,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userNameOrEmailAddress': userNameOrEmailAddress,
      'password': password,
    };
  }

  factory AuthBody.fromMap(Map<String, dynamic> map) {
    return AuthBody(
      userNameOrEmailAddress: map['userNameOrEmailAddress'] ?? '',
      password: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthBody.fromJson(String source) =>
      AuthBody.fromMap(json.decode(source));

  @override
  String toString() =>
      'AuthBody(userNameOrEmailAddress: $userNameOrEmailAddress, password: $password)';

  @override
  List<Object> get props => [userNameOrEmailAddress, password];
}
