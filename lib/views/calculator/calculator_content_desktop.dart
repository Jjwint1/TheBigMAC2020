import 'package:flutter/material.dart';

class CalculatorContentDesktop extends StatefulWidget {

  _CalculatorContentDesktop createState() {
    return _CalculatorContentDesktop();
  }
}

class _CalculatorContentDesktop extends State {
  int VKValue = 0;
  double totalSavedVK = 0;

  int formalsValue = 0;
  double totalSavedFormals = 0;

  int pubValue = 0;
  double totalSavedPub = 0;

  int haircutValue = 0;
  double totalSavedHaircut = 0;

  int coffeeValue = 0;
  double totalSavedCoffee = 0;

  double totalSaved = 0;

  double calculateSaved() {
    return (totalSavedVK + totalSavedFormals + totalSavedPub + totalSavedHaircut + totalSavedCoffee);
  }


  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 300, right: 300, top: 50),
          child: Column(
            children: <Widget>[

              Text(
                'Calculate how much you would typically spend during a week in Cambridge with our calculator!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 20),

              Text(
                "How much would you spend a week on VKs? £"+VKValue.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Slider(
                value: VKValue.toDouble(),
                min: 0.0,
                max: 30.0,
                activeColor: Color(0xFF011f4b),
                inactiveColor: Colors.black12,
                label: 'VKs',
                onChanged: (double newValue) {
                  setState(() {
                    VKValue = newValue.round();
                    totalSavedVK = VKValue.toDouble();
                    totalSaved = calculateSaved();
                  });
                },
              ),

              Text(
                "How much would you spend a week on Formals? £"+formalsValue.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Slider(
                value: formalsValue.toDouble(),
                min: 0.0,
                max: 30.0,
                activeColor: Color(0xFF011f4b),
                inactiveColor: Colors.black12,
                label: 'Formals',
                onChanged: (double newValue) {
                  setState(() {
                    formalsValue = newValue.round();
                    totalSavedFormals = formalsValue.toDouble();
                    totalSaved = calculateSaved();
                  });
                },
              ),

              Text(
                "How much would you spend a week at the pub? £"+pubValue.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Slider(
                value: pubValue.toDouble(),
                min: 0.0,
                max: 20.0,
                activeColor: Color(0xFF011f4b),
                inactiveColor: Colors.black12,
                label: 'Pub Trips',
                onChanged: (double newValue) {
                  setState(() {
                    pubValue = newValue.round();
                    totalSavedPub = pubValue.toDouble();
                    totalSaved = calculateSaved();
                  });
                },
              ),

              Text(
                "How much would a haircut cost you? £"+haircutValue.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Slider(
                value: haircutValue.toDouble(),
                min: 0.0,
                max: 50.0,
                activeColor: Color(0xFF011f4b),
                inactiveColor: Colors.black12,
                label: 'Haircut',
                onChanged: (double newValue) {
                  setState(() {
                    haircutValue = newValue.round();
                    totalSavedHaircut = haircutValue.toDouble();
                    totalSaved = calculateSaved();
                  });
                },
              ),

              Text(
                "How much would you spend a week on coffee? £"+coffeeValue.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Slider(
                value: coffeeValue.toDouble(),
                min: 0.0,
                max: 20.0,
                activeColor: Color(0xFF011f4b),
                inactiveColor: Colors.black12,
                label: 'Coffee',
                onChanged: (double newValue) {
                  setState(() {
                    coffeeValue = newValue.round();
                    totalSavedCoffee = coffeeValue.toDouble();
                    totalSaved = calculateSaved();
                  });
                },
              ),

              Text(
                "Total saved per week in isolation: £"+totalSaved.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
    );
  }
}