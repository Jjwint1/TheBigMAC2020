import 'package:flutter/material.dart';
import 'package:TheBigMac/widgets/NavigationBar/navigation_bar_tablet_desktop.dart';
import 'package:TheBigMac/widgets/NavigationBar/navigation_bar_mobile.dart';

import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;
  const NavigationBar(this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(_scaffoldKey),
      tablet: NavigationBarMobile(_scaffoldKey),
      desktop: NavigationBarTabletDesktop(),
    );
  }
}

















