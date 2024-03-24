import 'package:flutter/material.dart';

class GngrStartPage extends StatelessWidget {
  const GngrStartPage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/griff.png',
                  height: 170,
                  width: 235,
                ),
                const SizedBox(
                  height: 90,
                ),
                const Text(
                  'É bom ter você por aqui...',
                  style: TextStyle(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
