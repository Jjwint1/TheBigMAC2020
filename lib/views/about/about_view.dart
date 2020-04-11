import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:TheBigMac/views/about/about_content_desktop.dart';
import 'package:TheBigMac/views/about/about_content_mobile.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AboutContentDesktop(),
      mobile: AboutContentMobile(),
    );
  }
}