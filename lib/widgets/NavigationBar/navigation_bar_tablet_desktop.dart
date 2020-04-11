import 'package:flutter/material.dart';
import 'package:TheBigMac/widgets/NavigationBar/navbar_item.dart';
import 'package:TheBigMac/widgets/NavigationBar/navbar_logo.dart';
import 'package:TheBigMac/routing/route_names.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Home', HomeRoute, Colors.black),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About', AboutRoute, Colors.black),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Donate', DonateRoute, Colors.blue),
              SizedBox(
                width: 60,
              ),
              NavBarItem('FAQ', FAQRoute, Colors.black),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Calculator', CalculatorRoute, Colors.black),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Contact', ContactRoute, Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}