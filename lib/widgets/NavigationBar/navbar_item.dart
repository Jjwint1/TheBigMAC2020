import 'package:flutter/material.dart';
import 'package:TheBigMac/services/navigation_service.dart';
import 'package:TheBigMac/service_locator.dart';
import 'package:TheBigMac/extensions/hover_Extensions.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final Color color;
  const NavBarItem(this.title, this.navigationPath, this.color, {Key key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: color,
          fontWeight: FontWeight.w200,
        ),
      ).showCursorOnHover,
    );
  }
}