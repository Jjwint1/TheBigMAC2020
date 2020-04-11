import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:TheBigMac/services/navigation_service.dart';
import 'package:TheBigMac/service_locator.dart';
import 'package:TheBigMac/extensions/hover_Extensions.dart';


class HomePageTitle extends StatelessWidget {
  const HomePageTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {

        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop ? TextAlign.left : TextAlign.center;
        double descSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile ? 16 : 20;

        return Container(
          width: 800,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 500,
                child: Image.asset(
                  'assets/HomePageTitle.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Text(
                "Donate a part of your May Ball Ticket refund to CSER and Addenbrooke\'s Charitable Trust, local organisations helping to fight the Coronavirus pandemic. Don't worry, if you didn't buy a ticket, you can donate too. Why not donate the cost of your VKs, formal meals, haircut or cindies tickets?",
                style: TextStyle(
                  fontSize: descSize, height: 1.7, fontWeight: FontWeight.w200,
                ),
                textAlign: textAlignment,
              ),
              SizedBox(height: 10),
              GestureDetector(
                child: Text('Use our calculator to work out how much you\'re saving in isolation!',
                  style: TextStyle(
                  fontSize: descSize, height: 1.7, fontWeight: FontWeight.w200, decoration: TextDecoration.underline, color: Colors.blue,
                ),
                  textAlign: textAlignment,
                ),
                onTap: () {
                  locator<NavigationService>().navigateTo('calculator');
                },
              ).showCursorOnHover,
            ],
          ),
        );
      },
    );
  }
}