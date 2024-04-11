import 'package:flutter/material.dart';

class GengarForgotPasswordPage extends StatelessWidget {
  const GengarForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 15),
              Image.asset('assets/images/griff.png'),
            ],
          ),
        ),
      )),
    );
  }
}
