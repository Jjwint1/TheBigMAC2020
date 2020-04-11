import 'package:flutter/material.dart';
import 'package:TheBigMac/views/donate/donate_content_desktop.dart';
import 'package:TheBigMac/views/donate/donate_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class DonateView extends StatelessWidget {
  const DonateView({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        desktop: 1200,
        tablet: 1200,
        watch: 300,
      ),
      desktop: DonateContentDesktop(),
      mobile: DonateContentMobile(),
    );
  }
}