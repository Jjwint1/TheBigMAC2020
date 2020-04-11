import 'package:flutter/material.dart';
import 'package:TheBigMac/views/about/about_info.dart';

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'ABOUT',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              AboutInfo,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}