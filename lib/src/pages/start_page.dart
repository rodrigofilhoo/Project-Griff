import 'package:flutter/material.dart';

class GngrStartPage extends StatelessWidget {
  const GngrStartPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [Text('Hello World')],
            ),
          ),
        ),
      ),
    );
  }
}
