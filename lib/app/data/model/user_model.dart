// class User {
//   String? email;
//   String? password;

//   User({required this.email, required this.password});

//   User.fromJson(Map<String, dynamic> json) {
//     email = json['email'].toString();
//     password = json['senha'].toString();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};

//     data['email'] = email;
//     data['senha'] = password;
//     return data;
//   }
// }

// Tentando com a serialização usando plugin

// import 'package:json_annotation/json_annotation.dart';

// part 'user.g.dart';

// @JsonSerializable()
// class User {
//   final String email;
//   final String password;

//   User(this.email, this.password);
//   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

//   Map<String, dynamic> toJson() => _$UserToJson(this);
// }

class User {
  User({
    required this.id,
    required this.nome,
    required this.email,
    required this.senha,
    required this.ativo,
  });
  late final int id;
  late final String nome;
  late final String email;
  late final String senha;
  late final bool ativo;

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    email = json['email'];
    senha = json['senha'];
    ativo = json['ativo'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    data['email'] = email;
    data['senha'] = senha;
    data['ativo'] = ativo;
    return data;
  }
}
