import 'package:flutter/material.dart';
import 'package:TheBigMac/widgets/NavigationDrawer/nav_drawer_item.dart';
import 'package:TheBigMac/routing/route_names.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          DrawerItem('Home', Icons.home, HomeRoute, Colors.black),
          DrawerItem('About', Icons.help, AboutRoute, Colors.black),
          DrawerItem('Donate', Icons.arrow_right, DonateRoute, Colors.blue),
          DrawerItem('FAQ', Icons.help, FAQRoute, Colors.black),
          DrawerItem('Calculator', Icons.plus_one, CalculatorRoute, Colors.black),
          DrawerItem('Contact', Icons.contact_mail, ContactRoute, Colors.black),
        ],
      ),
    );
  }
}