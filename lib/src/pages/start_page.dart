import 'package:flutter/material.dart';
import 'package:project_griff/src/features/buttons/gengar_button.dart';
import 'package:project_griff/src/pages/auth/login_page.dart';
import 'package:project_griff/src/pages/auth/register_page.dart';

class GengarStartPage extends StatelessWidget {
  const GengarStartPage({super.key, required String title});

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
                  height: 250,
                  width: 300,
                ),
                const SizedBox(
                  height: 50,
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
                  height: 150,
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
                const GengarButton(
                  label: 'Cadastrar',
                  margin: EdgeInsets.symmetric(horizontal: 2),
                ),
                const GengarButton(
                  label: 'Entrar',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const GengarLoginPage(),
//                       ),
//                     );
//                   },