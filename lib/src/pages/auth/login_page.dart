import 'package:flutter/material.dart';
import 'package:project_griff/src/pages/start_page.dart';

class GengarLoginPage extends StatelessWidget {
  const GengarLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
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
    );
  }
}
