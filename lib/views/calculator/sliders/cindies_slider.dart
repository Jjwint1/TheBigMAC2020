import 'package:flutter/material.dart';

class CindiesSlider extends StatefulWidget {

  _CindiesSliderState createState() {
    return _CindiesSliderState();
  }
}

class _CindiesSliderState extends State {
  int value = 0;

  Widget build(BuildContext context) {
    return Slider(
      value: value.toDouble(),
      min: 0.0,
      max: 10.0,
      activeColor: Colors.red,
      inactiveColor: Colors.black,
      label: '$value',
      onChanged: (double newValue) {
        setState(() {
          value = newValue.round();
        });
      },
    );
  }
}