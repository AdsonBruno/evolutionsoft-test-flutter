import 'package:evolutionsoft_test_flutter/app/data/model/auth_model.dart';
import 'package:evolutionsoft_test_flutter/app/data/provider/auth_provider.dart';

class AuthRepository {
  final AuthApiClient apiClient = AuthApiClient();

  Future<AuthModel> login(String email, String password) async {
    Map<String, dynamic>? json = await apiClient.login(email, password);
    return AuthModel.fromJson(json as Map<String, dynamic>);
  }
}
