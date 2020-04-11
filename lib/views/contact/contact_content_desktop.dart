import 'package:flutter/material.dart';
import 'package:TheBigMac/widgets/ContactInfo/contact_info_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:TheBigMac/extensions/hover_Extensions.dart';

class ContactContentDesktop extends StatelessWidget {
  const ContactContentDesktop({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ContactInfoCard('Jade Charles', 'Co-Founder', 'jac281@cam.ac.uk'),
              SizedBox(width: 30),
              ContactInfoCard('Zehn Mehmood', 'Co-Founder', 'mzm22@cam.ac.uk'),
              SizedBox(width: 30),
              ContactInfoCard('Tiger Yotsawat', 'Publicity Lead', 'yt337@cam.ac.uk'),
              SizedBox(width: 30),
              ContactInfoCard('George Rosenfeld', 'Campaign Advisor', 'gr403@cam.ac.uk'),
              SizedBox(width: 30),
              ContactInfoCard('Joe Winterburn', 'Website Designer', 'jjw79@cam.ac.uk'),
            ],
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    "assets/fb.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                onTap: () {
                  launch('https://www.facebook.com/BigMayBallAppealCoronavirus/');
                },
              ).showCursorOnHover,
              SizedBox(width: 30),
              GestureDetector(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    "assets/ig.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                onTap: () {
                  launch('https://www.instagram.com/thebigmac2020/');
                },
              ).showCursorOnHover,
            ],
          )
        ],
      ),
    );
  }
}