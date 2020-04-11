import 'package:flutter/material.dart';
import 'package:TheBigMac/views/calculator/calculator_content_desktop.dart';
import 'package:TheBigMac/views/calculator/calculator_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: CalculatorContentDesktop(),
      mobile: CalculatorContentMobile(),
    );
  }
}