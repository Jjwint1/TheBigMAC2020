import 'package:flutter/material.dart';
import 'package:TheBigMac/service_locator.dart';
import 'package:TheBigMac/services/navigation_service.dart';
import 'package:TheBigMac/routing/route_names.dart';
import 'package:TheBigMac/extensions/hover_Extensions.dart';

class CallToDonate extends StatelessWidget {
  final String title;
  const CallToDonate(this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(DonateRoute);
      },

      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: Center(
              child: Text(
                'Total raised so far: £1000',
                style: TextStyle(
                  fontSize: 40,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Card(
            child: Container(
              color: Color(0xFF011f4b),
              width: 200,
              height: 80,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            elevation: 20,
          ).showCursorOnHover,
        ],
      ),
    );
  }
}