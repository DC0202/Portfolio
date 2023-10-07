import 'package:flutter/material.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/res/responsive.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: Text(
        text,
        style: const TextStyle(
          fontSize: 70,
          fontWeight: FontWeight.w900,
          letterSpacing: 7.0,
        ),
      ),
      tablet: Text(
        text,
        style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w900,
          letterSpacing: 2.0,
        ),
      ),
      mobile: Text(
        text,
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w900,
          letterSpacing: 2.0,
        ),
      ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Responsive(
      desktop: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: theme.textColor,
          fontSize: 18,
        ),
      ),
      tablet: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: theme.textColor.withOpacity(0.6),
          fontSize: 16,
        ),
      ),
      mobile: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: theme.textColor.withOpacity(0.6),
          fontSize: 13,
        ),
      ),
    );
  }
}
