// import 'package:evolutionsoft_test_flutter/app/data/model/user_model.dart';

// class AuthModel {
//   // User user;
//   AuthModel({required this.user});
//   late User user;
//   // factory AuthModel.fromJson(Map<String, dynamic> json) {
//   //   // print(user);
//   //   // return AuthModel(user: json['user']);
//   //   return AuthModel(user: json['user'] ?? json['user']['email']);
//   // }

//   AuthModel.fromJson(Map<String, dynamic> json) {
//     // print(user);
//     // return AuthModel(user: json['user']);
//     AuthModel(user: json['user']) as Map<String, dynamic>;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     // data['user'] = user.toJson();
//     data['user'] = user.toJson();
//     print(data);
//     return data;
//   }
// }

import 'package:evolutionsoft_test_flutter/app/data/model/user_model.dart';

class AuthModel {
  AuthModel({
    required this.email,
    required this.password,
    // required this.user,
  });
  late final String email;
  late final String password;
  late final User user;

  AuthModel.fromJson(Map<String, dynamic> json) {
    // user = json['user'];
    email = json['email'];
    password = json['senha'];
    // senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['email'] = email;
    data['senha'] = password;
    // data['user'] = user.toJson();
    return data;
  }
}
