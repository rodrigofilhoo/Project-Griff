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
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  'assets/images/griff.png',
                  height: 200,
                  width: 250,
                ),
                const SizedBox(
                  height: 70,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'É bom ter você por aqui...\npreparado para a nova\nfaze da sua vida?',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
