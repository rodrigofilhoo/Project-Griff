import 'package:flutter/material.dart';

class GengarTextForm extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool osbcureText;
  final prefixIcon;
  final keyboardType;

  const GengarTextForm({
    super.key,
    required this.hintText,
    required this.controller,
    required this.osbcureText,
    required this.prefixIcon,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      height: 55,
      child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            prefixIconColor: Colors.black,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
          )),
    );
  }
}
