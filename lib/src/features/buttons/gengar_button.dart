import 'package:flutter/material.dart';
import 'package:project_griff/src/features/text/gengar_text.dart';

class GengarButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final Color? colorButton;
  final Color? colorText;
  final Color? colorBorder;
  final EdgeInsetsGeometry padding;
  final double? elevation;
  final EdgeInsets? margin;
  final Widget? icon;

  const GengarButton({
    super.key,
    required this.label,
    this.onPressed,
    this.colorButton,
    this.colorText,
    this.colorBorder,
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    this.elevation,
    this.margin,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Container(
        decoration: BoxDecoration(
          color: colorBorder,
          border: Border.all(
            width: 2,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            elevation: elevation,
            backgroundColor: colorButton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            padding: padding,
          ),
          child: GengarText(
            text: label,
            typography: GengarTypography.button,
            color: colorText,
          ),
        ),
      ),
    );
  }
}
