import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Image.asset(
        'assets/logo.jpeg',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}