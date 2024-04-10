import 'package:flutter/material.dart';

enum GengarTypography {
  title(true, 24),
  button(true, 16),
  body(false, 14);

  final bool isBold;
  final double size;
  const GengarTypography(this.isBold, this.size);
}

class GengarText extends StatelessWidget {
  final String text;
  final GengarTypography typography;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? maskFilter;

  const GengarText({
    super.key,
    required this.text,
    this.typography = GengarTypography.body,
    this.color,
    this.maxLines,
    this.overflow,
    this.maskFilter,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: typography.size,
            fontWeight: typography.isBold ? FontWeight.bold : FontWeight.normal,
          ),
    );
  }
}
