import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:TheBigMac/views/FAQ/FAQ_content_desktop.dart';
import 'package:TheBigMac/views/FAQ/FAQ_content_mobile.dart';

class FAQView extends StatelessWidget {
  const FAQView({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: FAQContentDesktop(),
      tablet: FAQContentMobile(),
      mobile: FAQContentMobile(),
    );
  }
}