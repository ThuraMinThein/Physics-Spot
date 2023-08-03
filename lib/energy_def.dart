import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'energy_cal.dart';
import 'main.dart';

class EnergyDef extends StatelessWidget {
  Widget build(BuildContext context) {
    var phWidth = MediaQuery.of(context).size.width;
    var phHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF1A2B42),
      appBar: AppBar(
          backgroundColor: const Color(0xFF274978),
          toolbarHeight: phHeight / (800 / 70),
          automaticallyImplyLeading: false,
          title: Padding(
              padding: EdgeInsets.only(top: phHeight / (800 / 20)),
              child: Row(children: [
                Image(
                  image: const AssetImage('images/energy_Icon.png'),
                  width: phWidth / (360 / 58),
                  height: phHeight / (800 / 39),
                ),
                Container(
                  width: phHeight / (360 / 5),
                ),
                SizedBox(
                  width: phWidth / (360 / 110),
                  height: phHeight / (800 / 27),
                  child: const AutoSizeText(
                    'Defination',
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(width: phWidth / (360 / 30)),
                Padding(
                  padding: EdgeInsets.only(
                      left: phWidth / (360 / 10), top: phHeight / (800 / 5)),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Main()),
                            ModalRoute.withName('/calculate'),
                          );
                        }, //Add home page function here
                        icon: const Icon(Icons.home_rounded),
                        iconSize: phWidth / (360 / 40),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EnergyCalculatorMain()),
                          );
                        }, //Add defination page function here
                        icon: const Icon(Icons.calculate),
                        iconSize: phWidth / (360 / 40),
                      ),
                    ],
                  ),
                ),
              ]))),
      body: Scrollbar(
        child: ListView(
          children: [
            Column(
              children: [
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: phHeight / (800 / 30),
                            left: phWidth / (360 / 20),
                            right: phWidth / (360 / 5)),
                        child: const AutoSizeText.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Energy',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Color.fromARGB(255, 12, 228, 19),
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text:
                                  '\n\n\nEnergy is a fundamental concept in physics and is present in all physical systems. It is a scalar quantity, meaning that it has magnitude but no direction. The units of energy are ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: 'joules (J) ',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text: ', named after the English physicist ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: 'James Prescott Joule, ',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  'who is known for his work on the mechanical equivalent of heat.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nEnergy is a property of objects that allows them to do work. Work is defined as the application of a force over a distance, so energy is required to move an object against force.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nFor example, when you lift a book off the ground, you are doing work on the book, and you are using energy to do so.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nEnergy is defined as the capacity to do work.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: "\n\nIt's a scalar quantity",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nwhenever work is done on the body, the energy gained by the body is equal to the amount of wok done.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nThe unit of energy and work are the same because energy passed by body is measured by the amount of work done.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\n    Different forms of energy',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19)))
                        ])))),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Row(children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: phHeight / (800 / 40),
                              left: phWidth / (360 / 20),
                              right: phWidth / (360 / 5)),
                          child: const AutoSizeText.rich(TextSpan(children: [
                            TextSpan(
                                text: '-Kinetic energy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: '\n-Potential energy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: '\n-Heat energy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: '\n-Light energy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: '\n-Chemical energy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ]))),
                      Padding(
                          padding: EdgeInsets.only(
                              top: phHeight / (800 / 40),
                              left: phWidth / (360 / 50)),
                          child: const AutoSizeText.rich(TextSpan(children: [
                            TextSpan(
                                text: '-Electrical energy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: '\n-Magnetic energy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: '\n-Solar energy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: '\n-Nuclear energy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: '\n-Sound energy',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ])))
                    ])),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: phHeight / (800 / 50),
                            left: phWidth / (360 / 20),
                            right: phWidth / (360 / 5)),
                        child: const AutoSizeText.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Kinetic Energy',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                        ])))),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: phHeight / (800 / 45),
                                left: phWidth / (360 / 20),
                                right: phWidth / (360 / 5)),
                            child: const AutoSizeText.rich(TextSpan(children: [
                              TextSpan(
                                  text: 'KE = 1/2 mv\u00b2',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 12, 228, 19))),
                            ]))))),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: phHeight / (800 / 45),
                            left: phWidth / (360 / 20),
                            right: phWidth / (360 / 5)),
                        child: const AutoSizeText.rich(TextSpan(children: [
                          TextSpan(
                              text: 'where',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          TextSpan(
                              text: ' KE',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text: ' is the kinetic energy, ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          TextSpan(
                              text: '\n     m',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text: ' is the mass of the object, ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          TextSpan(
                              text: '\n     v',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text: ' is its velocity.',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ])))),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: phHeight / (800 / 50),
                            left: phWidth / (360 / 20),
                            right: phWidth / (360 / 5)),
                        child: const AutoSizeText.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Kinetic Energy',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  " is the energy that an object possesses due to its motion. It's defined as the work needed to accelerate an object of a given mass from rest to its current velocity.",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nThe amount of ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: 'kinetic energy',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  "possessed by an object depends on its mass and velocity, and it is directly proportional to the square of its velocity. This means that doubling an object's velocity will increase its kinetic energy four-fold.",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ])))),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 50),
                        left: phWidth / (360 / 20),
                        right: phWidth / (360 / 5)),
                    child: const AutoSizeText.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Potential Energy',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 12, 228, 19)))
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 20),
                        left: phWidth / (360 / 20),
                        right: phWidth / (360 / 5)),
                    child: const Image(
                      image: AssetImage('images/energy1.png'),
                    ),
                  ),
                ),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: phHeight / (800 / 50),
                            left: phWidth / (360 / 20),
                            right: phWidth / (360 / 5)),
                        child: const AutoSizeText.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Potential Energy',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  " is the energy that an object possesses due to its position or state, and it has the potential to do work if released.",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nIt is a form of stored energy that can be transformed into kinetic energy, which is the energy an object possesses due to its motion.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nThe amount of potential energy an object has depends on its position relative to a reference point and the forces acting upon it. ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  "\n\n\nDifferent forms of Potential Energy :",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text: '\n\nGravitational Potential Energy,',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nElastic Potential Energy,',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nChemical Potential Energy,',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nElectric Potential Energy,',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nNuclear Potential Energy,',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white))
                        ])))),
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 50),
                        left: phWidth / (360 / 20),
                        right: phWidth / (360 / 5)),
                    child: const AutoSizeText.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: '>Gravitational Potential Energy<',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  '\n\nWhen an object is lifted to a certain height above the ground, it gains potential energy due to gravity. For example, a ball held at the top of a hill or book placed on a shelf has gravitational potential energy.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 20),
                        left: phWidth / (360 / 20),
                        right: phWidth / (360 / 5)),
                    child: const Image(
                      image: AssetImage('images/energy2.png'),
                    ),
                  ),
                ),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: phHeight / (800 / 50),
                                left: phWidth / (360 / 20),
                                right: phWidth / (360 / 5)),
                            child: const AutoSizeText.rich(TextSpan(children: [
                              TextSpan(
                                  text: 'PE = mgh',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 12, 228, 19))),
                            ]))))),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: phHeight / (800 / 50),
                            left: phWidth / (360 / 20),
                            right: phWidth / (360 / 5)),
                        child: const AutoSizeText.rich(TextSpan(children: [
                          TextSpan(
                              text: 'where: ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: 'PE',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text: ' is potential energy',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          TextSpan(
                              text: '\n             m',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text: ' is the mass of the object',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n             g',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text: ' is the acceleration due to gravity,',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n             h',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  ' is the height of the object above a reference point.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white))
                        ])))),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: phHeight / (800 / 50),
                            left: phWidth / (360 / 20),
                            right: phWidth / (360 / 5)),
                        child: const AutoSizeText.rich(TextSpan(children: [
                          TextSpan(
                              text: '>Elastic Potential Energy<',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  '\n\nWhen an object is stretched or compressed, it gains elastic potential energy. For example, a stretched spring or a compressed rubber band has elastic potential energy.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ])))),
                Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: phHeight / (800 / 40)),
                  child: const Image(
                    image: AssetImage('images/e1.png'),
                  ),
                )),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Center(
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: phHeight / (800 / 40),
                                left: phWidth / (360 / 20),
                                right: phWidth / (360 / 5)),
                            child: const AutoSizeText.rich(TextSpan(children: [
                              TextSpan(
                                  text: 'PE = 1/2 kx\u00b2',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 12, 228, 19))),
                            ]))))),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: phHeight / (800 / 45),
                            left: phWidth / (360 / 20),
                            right: phWidth / (360 / 5)),
                        child: const AutoSizeText.rich(TextSpan(children: [
                          TextSpan(
                              text: 'where',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nk',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text: ' is the spring constant of the object ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '(measured in N/m or J/m\u00b2)',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  ',which represents the stiffness of the object',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nx',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  ' is the displacement of the object from its equilibrium position',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: ' (measured in meters)',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                        ])))),
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 50),
                        left: phWidth / (360 / 20),
                        right: phWidth / (360 / 5)),
                    child: const AutoSizeText.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  "Law of Conservation of Energy {PE + KE = PE' + KE'}\n <In Isolated System>",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  '\n\nThis equation is derived from the law of conservation of energy, which states that the total energy in an isolated system remains constant. In the case of mechanical energy, it implies that the sum of potential energy and kinetic energy before a particular event or change is equal to the sum of potential energy and kinetic energy after that event or change.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nThe figure shows the heights above the ground of some points on the track of a roller coaster.The speed of the carriage at A is 10m/s.What is the speed of the carriage at B and C?The friction and air resistance are assumed to be negligible.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                      padding: EdgeInsets.only(top: phHeight / (800 / 20)),
                      child: const Image(
                        image: AssetImage('images/energy3.png'),
                      )),
                ),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: phHeight / (800 / 20),
                            left: phWidth / (360 / 20),
                            right: phWidth / (360 / 5)),
                        child: const AutoSizeText.rich(TextSpan(children: [
                          TextSpan(
                              text:
                                  '\n\n In this problem,we have to find the velocity of at B place and the velocity of at C place',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: 'the velocity of at B place ',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text: 'and',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: ' the velocity of at C place',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  '\n\nSo in this case,we can find those answers by useing the law of conservation of Energy',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nThe total Energy before the collusion is the same as the total Energy after the collusion',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text:
                                  '\n\nSo the Total Energy at B place is the same as the total Energy at the A place.Also for the total Energy at C place so we can consider that total Energy at B place is the same as the total Energy at C place as well.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nTotal Energy at B = Total Energy at A',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(
                              text: "\n\nPE + KE = PE' + KE'",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nm * g * hB + 1/2 * m * vB\u00b2 = m * g * hA + 1/2 * m * vAV\u00b2',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nwe can say that the kinetic energy at B place is 0 because the object is no at a place that has height.It is on the ground which means that PE at the B place is 0.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\n1/2 m * vB\u00b2 = (m * 10 * 11.2) + 1/2 * m * (10)\u00b2',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nvB\u00b2 = 2 (112 + 50)',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nvB = 18ms\u207B\u00b9',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  'so the velocity of at the B place = 18ms\u207B\u00b9',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19)))
                        ])))),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: phHeight / (800 / 50),
                            left: phWidth / (360 / 20),
                            right: phWidth / (360 / 5)),
                        child: const AutoSizeText.rich(TextSpan(children: [
                          TextSpan(
                              text:
                                  'This case is the same for the velocity of at the C place',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nSo the total Energy at C = toal Energy at A',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\n(m * 10 * 15.4) + 1/2 * m * vC\u00b2 = (m * 10 * 11.2) + 1/2 * m * (10)\u00b2',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\n154 + 1/2 * vC\u00b2 = 112 + 1/2 * (10)\u00b2',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nvC\u00b2 = 2 * [112 + 1/2 * (10)\u00b2 - 154]',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nvC\u00b2 = 16',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nvC = 4ms\u207B\u00b9',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nThe velocity of at the C place is 4ms\u207B\u00b9',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 12, 228, 19))),
                          TextSpan(text: '\n\n\n\n')
                        ]))))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
