import 'package:stratosfera/core/common/entity/user.dart';

class UserModel extends User {
  UserModel({
    required super.id,
    required super.email,
    required super.username,
  });

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      email: map['email'] ?? '',
      username: map['username'] ?? '',
    );
  }

  UserModel copyWith({
    String? id,
    String? email,
    String? username,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      username: username ?? this.username,
    );
  }
}