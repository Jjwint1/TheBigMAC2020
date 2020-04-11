import 'package:flutter/material.dart';
import 'package:TheBigMac/views/home/home_content_desktop.dart';
import 'package:TheBigMac/views/home/home_content_mobile.dart';

import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        desktop: 1250,
        tablet: 600,
        watch: 300,
      ),
      mobile: HomeContentMobile(),
      tablet: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}
