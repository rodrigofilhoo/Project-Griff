import 'package:flutter/material.dart';
import 'package:project_griff/src/features/buttons/gengar_button.dart';
import 'package:project_griff/src/features/fields/gengar_txtForm.dart';
import 'package:project_griff/src/pages/auth/forgot_password_page.dart';
import 'package:project_griff/src/pages/start_page.dart';

class GengarLoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwsController = TextEditingController();
  GengarLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
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
                const Text(
                  'É bom ter você por aqui...\npreparado para a nova\nfase da sua vida?',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                GengarTextForm(
                  hintText: "Email",
                  controller: emailController,
                  osbcureText: false,
                  prefixIcon: const Icon(Icons.email),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                GengarTextForm(
                  hintText: "Senha",
                  controller: passwsController,
                  osbcureText: false,
                  prefixIcon: const Icon(Icons.lock),
                  keyboardType: TextInputType.visiblePassword,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 126)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const GengarForgotPasswordPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const GengarButton(
                  label: 'Criar conta',
                  padding: EdgeInsets.symmetric(horizontal: 140),
                  colorButton: Colors.black,
                  colorBorder: Colors.black,
                  colorText: Colors.white,
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GengarStartPage(
                          title: 'Start Paqe',
                        ),
                      ),
                    );
                  },
                  child: const Text('Voltar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
