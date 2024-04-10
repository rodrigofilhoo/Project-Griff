import 'package:flutter/material.dart';
import 'package:project_griff/src/features/text/gengar_text.dart';

class GengarButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;
  final Color? corButton;
  final Color? corTexto;
  final EdgeInsetsGeometry padding;
  final double? elevation;
  final EdgeInsets? margin;
  final Widget? icon;

  const GengarButton({
    super.key,
    required this.label,
    this.onTap,
    this.corButton,
    this.corTexto,
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    this.elevation,
    this.margin,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: TextButton.styleFrom(
          elevation: elevation,
          backgroundColor: corButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: padding,
        ),
        child: GengarText(
          text: label,
          typography: GengarTypography.button,
          color: corTexto,
        ),
      ),
    );
  }
}
