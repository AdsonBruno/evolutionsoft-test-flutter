import 'package:evolutionsoft_test_flutter/app/data/model/user_model.dart';

class AuthModel {
  User user;
  AuthModel({required this.user});
  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(user: json['user']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user'] = user.toJson();
    return data;
  }
}
