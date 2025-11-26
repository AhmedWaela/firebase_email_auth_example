import "package:firebase_email_auth_example/home_view.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const FirebaseEmailAuthExample());
}

class FirebaseEmailAuthExample extends StatelessWidget {
  const FirebaseEmailAuthExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
