import 'package:flutter/material.dart';
import 'package:TheBigMac/views/contact/contact_content_desktop.dart';
import 'package:TheBigMac/views/contact/contact_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: ContactContentDesktop(),
      mobile: ContactContentMobile(),
    );
  }
}