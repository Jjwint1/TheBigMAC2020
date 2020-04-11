import 'package:flutter/material.dart';
import 'views/LayoutTemplate/layout_template.dart';
import 'service_locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Big MAC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Lato',
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LayoutTemplate(),
    );
  }
}
