import 'package:flutter/material.dart';
import 'package:TheBigMac/routing/route_names.dart';
import 'package:TheBigMac/views/home/home_view.dart';
import 'package:TheBigMac/views/about/about_view.dart';
import 'package:TheBigMac/views/donate/donate_view.dart';
import 'package:TheBigMac/views/FAQ/FAQ_view.dart';
import 'package:TheBigMac/views/calculator/calculator_view.dart';
import 'package:TheBigMac/views/contact/contact_view.dart';


Route<dynamic> generateRoute(RouteSettings settings) {

  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case DonateRoute:
      return _getPageRoute(DonateView());
    case FAQRoute:
      return _getPageRoute(FAQView());
    case CalculatorRoute:
      return _getPageRoute(CalculatorView());
    case ContactRoute:
      return _getPageRoute(ContactView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}