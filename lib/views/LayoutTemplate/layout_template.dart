import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:TheBigMac/widgets/NavigationBar/navigation_bar.dart';
import 'package:TheBigMac/widgets/NavigationDrawer/navigation_drawer.dart';
import 'package:TheBigMac/service_locator.dart';
import 'package:TheBigMac/routing/routing.dart';
import 'package:TheBigMac/services/navigation_service.dart';
import 'package:TheBigMac/routing/route_names.dart';

class LayoutTemplate extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        key: _scaffoldKey,
        drawer: sizingInformation.isDesktop ? null : NavigationDrawer(),
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            NavigationBar(_scaffoldKey),
            Expanded(
              child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ),
            ),
          ],
        ),
      ),
    );
  }
}