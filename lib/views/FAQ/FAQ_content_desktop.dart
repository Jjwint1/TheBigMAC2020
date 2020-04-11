import 'package:flutter/material.dart';
import 'package:TheBigMac/views/FAQ/FAQ_question_box.dart';

import 'package:TheBigMac/views/FAQ/FAQ_data.dart';

class FAQContentDesktop extends StatelessWidget {
  const FAQContentDesktop({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(60, 0, 60, 60),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'FAQ',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FAQquestionBox(Q1, A1),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FAQquestionBox(Q2, A2),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FAQquestionBox(Q3, A3),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FAQquestionBox(Q4, A4),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FAQquestionBox(Q5, A5),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FAQquestionBox(Q6, A6),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FAQquestionBox(Q7, A7),
              ],
            ),

            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}