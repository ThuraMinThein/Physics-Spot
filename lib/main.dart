//flutter build apk --build-name=1.3.1 --build-number=12

/*
Started Date: 15.5.2023 (Monday)
Author: Paing Ko Ko and Thura Min Thein

This file is used for selection of calculator,selection of definition.
App bar is used.

There are switch button(to change calculator [or] definition),
three buttons and their logo.
We used elevated buttons.

Date : 15.5.2023 => 2.7.2023

       5.7.2023 (fix some bug (NaN error))
*/

import 'package:auto_size_text/auto_size_text.dart';
import 'package:conservation_laws_main/angular_cal.dart';
import 'package:conservation_laws_main/angular_def.dart';
import 'package:conservation_laws_main/energy_def.dart';
import 'package:conservation_laws_main/momentum_def.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'energy_cal.dart';
import 'momentum_cal.dart';

void main() {
  runApp(const PhysicsSpot());
}

class PhysicsSpot extends StatelessWidget {
  const PhysicsSpot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  @override
  Caldef createState() => Caldef();
}

class Caldef extends State<Main> {
  static bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    var phWidth = MediaQuery.of(context).size.width;
    var phHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF1a2b42),
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(top: phHeight / (800 / 35)),
          child: SizedBox(
            width: phWidth / (360 / 260),
            height: phHeight / (800 / 27),
            child: const AutoSizeText(
              'Laws of conservation of...',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        toolbarHeight: phHeight / (800 / 70),
        backgroundColor: const Color.fromARGB(255, 39, 73, 120),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 50), left: phWidth / (360 / 60)),
            child: LiteRollingSwitch(
              value: !switchValue,
              textOn: "Definition",
              textOff: "Calculator",
              textOffColor: Colors.black,
              textOnColor: Colors.white,
              colorOn: const Color.fromARGB(255, 2, 129, 255),
              colorOff: const Color.fromARGB(255, 0, 255, 132),
              iconOn: Icons.menu_book,
              iconOff: Icons.calculate,
              onChanged: (bool option) {
                if (option) {
                  switchValue = true;
                } else {
                  switchValue = false;
                }
              },
              onDoubleTap: () {
                switchValue = !switchValue;
              },
              onSwipe: () {
                switchValue = !switchValue;
              },
              onTap: () {
                switchValue = !switchValue;
              },
            ),
          ),
          //---------------------------------------------This button for Momentum.

          Align(
            alignment: const Alignment(0.0, -1.0),
            child: Padding(
              padding: EdgeInsets.only(
                  top: phHeight / (800 / 70), left: phWidth / (360 / 14)),
              child: Row(
                children: [
                  Image(
                    image: const AssetImage('images/momentum_Icon.png'),
                    width: phWidth / (360 / 52.51),
                    height: phHeight / (800 / 48.14),
                  ),
                  Container(width: phWidth / (360 / 20.5)),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => switchValue == true
                                  ? MomentumCalculatorMain()
                                  : MomentumDef()));
                    }, //add functin for Momentum
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(
                              255, 39, 73, 120)), //Change color
                      minimumSize: MaterialStateProperty.all(
                          Size(phWidth / (360 / 240), phHeight / (800 / 55))),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                    ),
                    child: const AutoSizeText(
                      'Momentum',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //---------------------------------------------This button for Angular Momentum.
          Align(
            alignment: const Alignment(0.0, -1.0),
            child: Padding(
              padding: EdgeInsets.only(
                  top: phHeight / (800 / 64), left: phWidth / (360 / 14)),
              child: Row(
                children: [
                  Image(
                    image: const AssetImage('images/angular_Icon.png'),
                    width: phWidth / (360 / 52.51),
                    height: phHeight / (800 / 48.14),
                  ),
                  Container(width: phWidth / (360 / 20.5)),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => switchValue == true
                                  ? AngularCalculatorMain()
                                  : AngularDef()));
                    }, //add functin for Angular Momentum
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(
                              255, 39, 73, 120)), //change color
                      minimumSize: MaterialStateProperty.all(
                          Size(phWidth / (360 / 240), phHeight / (800 / 55))),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                    ),
                    child: const AutoSizeText(
                      'Angular Momentum',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //---------------------------------------------This button for Energy.
          Align(
            alignment: const Alignment(0.0, -1.0),
            child: Padding(
              padding: EdgeInsets.only(
                  top: phHeight / (800 / 64), left: phWidth / (360 / 14)),
              child: Row(children: [
                Image(
                  image: const AssetImage('images/energy_Icon.png'),
                  width: phWidth / (360 / 52.51),
                  height: phHeight / (800 / 48.14),
                ),
                Container(width: phWidth / (360 / 20.5)),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => switchValue == true
                                ? EnergyCalculatorMain()
                                : EnergyDef()));
                  }, //add functin for Energy
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 39, 73, 120)), //Change color
                    minimumSize: MaterialStateProperty.all(
                        Size(phWidth / (360 / 240), phHeight / (800 / 55))),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                  ),

                  child: const AutoSizeText(
                    'Energy',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
