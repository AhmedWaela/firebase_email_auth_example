import 'package:dio/dio.dart';
import 'package:firebase_email_auth_example/user.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await signUpWithEmail();
          },
          child: Text("Sign Up With Email"),
        ),
      ),
    );
  }
  Future<User?> signUpWithEmail() async {
    String endpoint = "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDuCiZVX9fqTi-5VkwzOtXjU5LZjuqh_X4";
    Options options = Options(
      headers: {
        "Content-Type": "application/json",
      },
    );
    Object data = {
      "email": "ahmed@gmail.com",
      "password": "123456",
      "returnSecureToken": true,
    };
    try {
      Response response = await Dio().post(
        endpoint,
        options: options,
        data: data,
      );
      return User.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }
}
