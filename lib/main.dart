import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_griff/src/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return const MaterialApp(
      title: 'Project Griff',
      debugShowCheckedModeBanner: false,
      home: GengarStartPage(
        title: 'Project Griff',
      ),
    );
  }
}
