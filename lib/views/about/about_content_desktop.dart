import 'package:flutter/material.dart';
import 'package:TheBigMac/views/about/about_info.dart';

class AboutContentDesktop extends StatelessWidget {

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'ABOUT',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              AboutInfo,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}