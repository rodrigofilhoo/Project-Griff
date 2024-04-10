import 'package:flutter/material.dart';

class GengarButton extends StatelessWidget {
  final Function()? onTap;
  final String label;
  final Color? colorButton;
  final Color? colorLabel;

  const GengarButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.colorButton,
    required this.colorLabel,
    // required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        width: 350,
        height: 45,
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: colorButton,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Center(
              child: Text(
                'Criar conta',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Kanit',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
