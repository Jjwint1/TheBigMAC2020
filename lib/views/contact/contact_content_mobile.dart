import 'package:flutter/material.dart';
import 'package:TheBigMac/widgets/ContactInfo/contact_info_card.dart';

class ContactContentMobile extends StatelessWidget {
  const ContactContentMobile({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            ContactInfoCard('Jade Charles', 'Co-Founder', 'jac281@cam.ac.uk'),
            SizedBox(height: 20),
            ContactInfoCard('Zehn Mehmood', 'Co-Founder', 'mzm22@cam.ac.uk'),
            SizedBox(height: 20),
            ContactInfoCard('Tiger Yotsawat', 'Publicity Lead', 'yt337@cam.ac.uk'),
            SizedBox(height: 20),
            ContactInfoCard('George Rosenfeld', 'Campaign Advisor', 'gr403@cam.ac.uk'),
            SizedBox(height: 20),
            ContactInfoCard('Joe Winterburn', 'Website Designer', 'jjw79@cam.ac.uk'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}