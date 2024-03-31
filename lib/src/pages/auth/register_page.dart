import 'package:flutter/material.dart';
import 'package:project_griff/src/pages/start_page.dart';

class GengarRegisterPage extends StatelessWidget {
  const GengarRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
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
