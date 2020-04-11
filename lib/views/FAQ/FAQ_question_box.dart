import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FAQquestionBox extends StatelessWidget {
  final String question;
  final String answer;

  const FAQquestionBox(this.question, this.answer, {Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) {
          var boxWidth =
          sizingInformation.deviceScreenType == DeviceScreenType.Desktop
              ? 800.0
              : 200.0;

          return Container(
              width: boxWidth,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10.0)],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Text(
                    question,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 20),

                  Text(
                    answer,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),

                ],
              )
          );
        }
    );
  }
}