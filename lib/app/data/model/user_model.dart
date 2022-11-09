class User {
  String? email;
  String? password;

  User({required this.email, required this.password});

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'].toString();
    password = json['senha'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['email'] = email;
    data['senha'] = password;
    return data;
  }
}
