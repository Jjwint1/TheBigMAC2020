import 'package:flutter/material.dart';
import 'package:TheBigMac/widgets/HomePageTitle/home_page_title.dart';
import 'package:TheBigMac/widgets/CallToDonate/call_to_donate.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HomePageTitle(),
            SizedBox(height: 0),
            Center(
              child: CallToDonate('Donate!'),
            ),
          ],
        ),
      ),
    );
  }
}