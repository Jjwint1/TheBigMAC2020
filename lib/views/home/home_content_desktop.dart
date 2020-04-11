import 'package:flutter/material.dart';
import 'package:TheBigMac/widgets/HomePageTitle/home_page_title.dart';
import 'package:TheBigMac/widgets/CallToDonate/call_to_donate.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
      child: Row(
          children: <Widget>[
            HomePageTitle(),
            SizedBox(width: 100),
            Expanded(
              child: Center(
                child: CallToDonate('Donate!'),
              ),
            ),
          ],
        ),
    );
  }
}