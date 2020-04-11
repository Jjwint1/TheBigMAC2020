import 'package:flutter/material.dart';

class NavigationBarMobile extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey;
  const NavigationBarMobile(this._scaffoldKey, {Key key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
          SizedBox(
            width: 50,
            child: Image.asset(
            'assets/logo.jpeg',
            fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}