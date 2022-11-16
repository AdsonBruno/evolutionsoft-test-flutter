// -----------------------funcionando perfeitamente ----------------------------
// import 'dart:convert';

// import 'package:evolutionsoft_test_flutter/app/data/base_url.dart';
// import 'package:evolutionsoft_test_flutter/app/themes/app_text_styles.dart';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class AuthApiClient extends GetConnect {
//   final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

//   Future<Map<String, dynamic>?> login(String email, String password) async {
//     Map<String, String> requestHeaders = {
//       'Content-Type': 'application/json',
//     };

//     var response = await post(
//       "$apiBaseUrl/auth/login/",
//       {"email": email, "senha": password},
//       headers: requestHeaders,
//     );

//     // print(response.headers!['authorization']);
//     if (response.isOk) {
//       var token = response.headers!['authorization'];
//       print('entrou no response');
//       final SharedPreferences prefs = await _prefs;
//       await prefs.setString('token', '$token');
//       print(prefs.getString('token'));
//       // Get.toNamed(Routes.home);
//       // return prefs.getString('token');
//       // print(jsonDecode(response));
//       return response.headers;
//     } else {
//       Get.defaultDialog(
//           title: "Credenciais inválidas!",
//           titleStyle: TextStyles.titleCard,
//           content: Text(
//             '''O e-email ou senha inserida são inválidos, prossiga e tente novamente''',
//             style: TextStyles.modalDescriptionText,
//             textAlign: TextAlign.left,
//           ),
//           actions: [
//             const SizedBox(height: 16),
//             Container(
//               padding: const EdgeInsets.only(left: 161, right: 8),
//               child: TextButton(
//                 onPressed: () {
//                   Get.back();
//                 },
//                 child: Text(
//                   'Prosseguir',
//                   style: TextStyles.blueModalText,
//                 ),
//               ),
//             ),
//           ],
//           contentPadding: const EdgeInsets.only(
//             left: 20,
//             top: 16,
//             right: 20,
//             bottom: 16,
//           ),
//           titlePadding:
//               const EdgeInsets.only(left: 16, top: 20, right: 97, bottom: 16));

//       return {};
//     }
//   }
// }
// -----------------------------------------------------------------------------

// Tentativa com get e post -- docs

import 'package:evolutionsoft_test_flutter/app/data/base_url.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthApiClient extends GetConnect {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<Map<String, dynamic>?> login(String email, String password) async {
    Map<String, String> requestHeaders = {
      'Content-Type': 'application/json',
    };

    var response = await post(
        '$apiBaseUrl/auth/login', {'email': email, 'senha': password},
        headers: requestHeaders);

    if (response.statusCode == 204) {
      var token = response.headers!['authorization'];
      final SharedPreferences prefs = await _prefs;
      await prefs.setString('token', '$token');
      print(prefs.getString('token'));
      print('');

      return userLogin(prefs.getString('token')!);
    }
    return null;
  }

  Future<Map<String, dynamic>> userLogin(token) async {
    var response = await get('$apiBaseUrl/usuarios/1',
        headers: {'Authorization': 'Bearer $token'});

    if (response.statusCode == 200) {
      return response.body;
    }
    return {};
  }
}
