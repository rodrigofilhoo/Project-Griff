import 'package:flutter/material.dart';
import 'package:project_griff/src/features/buttons/gengar_button.dart';
import 'package:project_griff/src/features/fields/gengar_txtForm.dart';
import 'package:project_griff/src/pages/start_page.dart';

class GengarRegisterPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwsController = TextEditingController();
  final TextEditingController confirmPsswdController = TextEditingController();
  GengarRegisterPage({super.key});

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
                  hintText: "Telefone",
                  controller: phoneController,
                  osbcureText: false,
                  prefixIcon: const Icon(Icons.phone),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 10,
                ),
                GengarTextForm(
                  hintText: "Senha",
                  controller: passwsController,
                  osbcureText: true,
                  prefixIcon: const Icon(Icons.lock),
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(
                  height: 10,
                ),
                GengarTextForm(
                  hintText: "Confirmar Senha",
                  controller: confirmPsswdController,
                  osbcureText: true,
                  prefixIcon: const Icon(Icons.lock),
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(
                  height: 20,
                ),
                const GengarButton(
                  label: 'Criar conta',
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  child: const Text("Voltar"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GengarStartPage(
                          title: 'Start Page',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
