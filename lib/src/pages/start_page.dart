import 'package:flutter/material.dart';
import 'package:project_griff/src/features/buttons/gengar_button.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key, required String title});

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
                        fontSize: 28,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 170,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Já tem uma conta\ncom a gente?',
                      style: TextStyle(
                        fontFamily: 'Khanit',
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                GengarButton(
                  onTap: () {},
                  color: Colors.black,
                ),
                const SizedBox(height: 10),
                GengarButton(
                  onTap: () {},
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
