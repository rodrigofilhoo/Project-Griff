// import 'package:flutter/material.dart';

// class CoffeeText extends StatelessWidget {
//   final String text;
//   final Color? color;
//   final int? maxLines;
//   final TextOverflow? overflow;
//   final double? maskFilter;

//   const CoffeeText({
//     super.key,
//     required this.text,
//     this.color,
//     this.maxLines,
//     this.overflow,
//     this.maskFilter,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       maxLines: maxLines,
//       overflow: overflow,
//       style: Theme.of(context).textTheme.bodySmall!.copyWith(
//             fontSize: typography.size,
//             fontWeight: typography.isBold ? FontWeight.bold : FontWeight.normal,
//             foreground: Paint()
//               ..style = PaintingStyle.fill
//               ..color = color ?? ThemeService.of.backgroundText
//               ..maskFilter = MaskFilter.blur(
//                 BlurStyle.normal,
//                 maskFilter ?? 0,
//               ),
//           ),
//     );
//   }
// }