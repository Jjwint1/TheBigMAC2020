import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:TheBigMac/extensions/hover_Extensions.dart';

class ContactInfoCard extends StatelessWidget {
  final String name;
  final String role;
  final String email;

  const ContactInfoCard(this.name, this.role, this.email, {Key key}) : super(key: key);

  Widget build(BuildContext context) {

    var mailURL = "mailto:"+email;
    var imageName = "assets/"+name.split(" ")[0]+".png";
    var displayEmail =
    (email=="no_url") ? "" : email;

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {

        return GestureDetector(
          onTap: () {
            if(email == "no_url") {

            } else {
              launch(mailURL);
            }
          },
          child: Container(
            width: 150,
            height: 250,
            color: Colors.white,
            child: Card(
              color: Colors.white,
              elevation: 20,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 150,
                    child: Image.asset(
                      imageName,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    role,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    displayEmail,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            )
          ).showCursorOnHover,
        );
      },
    );
  }
}
