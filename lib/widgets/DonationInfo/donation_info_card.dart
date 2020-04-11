import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:TheBigMac/extensions/hover_Extensions.dart';

class DonationInfoCard extends StatelessWidget {
  final String title;
  final String info;
  final String url;
  const DonationInfoCard(this.title, this.info, this.url, {Key key}) : super(key: key);

  Widget build(BuildContext context) {
    String imageName = "";
    switch (title) {
      case 'Refund Forms':
        imageName = 'assets/white_ticket.png';
        break;
      case 'Donation Ticket':
        imageName = 'assets/FIXR_logo.png';
        break;
      case 'RAG Percent':
        imageName = 'assets/RAG_logo.png';
        break;
    }

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {

        var cardHeight =
        (sizingInformation.deviceScreenType == DeviceScreenType.Desktop ? 300.0 : 300.0);

        var cardWidth =
        (sizingInformation.deviceScreenType == DeviceScreenType.Desktop ? 200.0 : 200);

        var titleTextSize =
        sizingInformation.deviceScreenType == DeviceScreenType.Desktop ? 18.0 : 18.0;

        var descTextSize =
        sizingInformation.deviceScreenType == DeviceScreenType.Desktop ? 16.0 : 16.0;

        var imageHeight =
        sizingInformation.deviceScreenType == DeviceScreenType.Desktop ? 50.0 : 30.0;

        var spacer1Height =
        sizingInformation.deviceScreenType == DeviceScreenType.Desktop ? 10.0 : 5.0;

        var spacer2Height =
        sizingInformation.deviceScreenType == DeviceScreenType.Desktop ? 20.0 : 10.0;

        var paddingSize =
        sizingInformation.deviceScreenType == DeviceScreenType.Desktop ? 10.0 : 10.0;

        return GestureDetector(
          onTap: () {
            if(url == "no_url") {

            } else {
              launch(url);
            }
          },

          child: Container(
            width: cardWidth,
            height: cardHeight,
            color: Color(0xFF011f4b),
            child: Card(
              color: Color(0xFF011f4b),
              elevation: 40,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(paddingSize),
                  ),
                  SizedBox(
                    height: imageHeight,
                    child: Image.asset(
                      imageName,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(height: spacer1Height),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: titleTextSize,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: spacer2Height),
                  Text(
                    info,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: descTextSize,
                      fontWeight: FontWeight.w200,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ).showCursorOnHover,
        );

      },
    );






  }
}