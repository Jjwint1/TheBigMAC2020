import 'package:flutter/material.dart';
import 'package:TheBigMac/services/navigation_service.dart';
import 'package:TheBigMac/service_locator.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  final Color color;
  const DrawerItem(this.title, this.icon, this.navigationPath, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 40),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 30),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
              locator<NavigationService>().navigateTo(navigationPath);
            },
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
              ),
            ),
          )
        ],
      ),
    );
  }
}