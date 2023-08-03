import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'angular_cal.dart';
import 'main.dart';

class AngularDef extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final phWidth = MediaQuery.of(context).size.width;
    final phHeight = MediaQuery.of(context).size.height;
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
                image: const AssetImage('images/angular_Icon.png'),
                width: phWidth / (360 / 58),
                height: phHeight / (800 / 39),
              ),
              SizedBox(
                width: phWidth / (360 / 120),
                height: phHeight / (800 / 27),
                child: const AutoSizeText(
                  '    Definition',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
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
                              builder: (context) => AngularCalculatorMain()),
                        );
                      }, //Add defination page function here
                      icon: const Icon(Icons.calculate),
                      iconSize: phWidth / (360 / 40),
                    ),
                  ],
                ),
              ),
            ])),
      ),
      body: Scrollbar(
        child: ListView(children: [
          Column(
            children: [
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 25),
                      left: phWidth / (360 / 20),
                      right: phWidth / (360 / 5)),
                  child: const AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'Angular Momentum',
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              '\n\n\nAngular Momentum is a fundamental concept in physics that describes ',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextSpan(
                            text:
                                'the amount of rotational motion an object possesses.',
                            style: TextStyle(fontSize: 18, color: Colors.red))
                      ]),
                      overflow: TextOverflow.visible),
                ),
              ),
              Row(
                children: [
                  Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: phHeight / (800 / 30),
                          left: phWidth / (360 / 100)),
                      child: Image(
                        image: const AssetImage('images/Vector.png'),
                        width: phWidth / (360 / 58),
                        height: phHeight / (800 / 39),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: phHeight / (800 / 30),
                          left: phWidth / (360 / 20),
                          right: phWidth / (360 / 5)),
                      child: Image(
                        image: const AssetImage('images/world.png'),
                        width: phWidth / (360 / 58),
                        height: phHeight / (800 / 39),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 30),
                      left: phWidth / (360 / 20),
                      right: phWidth / (360 / 5)),
                  child: const AutoSizeText.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'It is ',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          TextSpan(
                              text: 'a vector quantity.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.red)),
                          TextSpan(
                            text: '\n\nThe magnitude of angular momentum is ',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          TextSpan(
                              text:
                                  "proportional to the object's moment of inertiaand its angular velocity.",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.red)),
                          TextSpan(
                              text: '\n\nIn mathematical form..,',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ],
                      ),
                      overflow: TextOverflow.visible),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: phHeight / (800 / 30)),
                  child: const AutoSizeText(
                    'L = Iω = mvR',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 30), left: phWidth / (360 / 13)),
                  child: const AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text:
                              'where..,m = mass of the object \n\n    v = ω = angular velocity\n\n    R = radian',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ]),
                      overflow: TextOverflow.visible),
                ),
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 30), left: phWidth / (360 / 13)),
                  child: const AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'R = r\u00b2',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                            text: ' so',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        TextSpan(
                          text: ' mr\u00b2 = I',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                          text: ' and',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextSpan(
                          text: ' v = ω ',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                            text: ' therefore..,',
                            style: TextStyle(fontSize: 18, color: Colors.white))
                      ]),
                      overflow: TextOverflow.visible),
                ),
              ),
              Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 30),
                        left: phWidth / (360 / 20),
                        right: phWidth / (360 / 5)),
                    child: const AutoSizeText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'The angular momentum of an object can be expressed as ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            TextSpan(
                                text: 'L = Iω',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text: ', where',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: ' L',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text: ' is the angular momentum,',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: ' I',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text: ' is the',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: ' moment of inertia',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text: ', and',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: ' ω',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text: ' is',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: ' the angular velocity.',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text: '\n\nThe moment of inertia is',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text:
                                    " a measure of an object's resistance to rotational motion",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text:
                                    ', and depends on the distribution of mass and the shape of the object.',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                              text:
                                  '\n\nThe angular velocity is the rate at which the object',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            TextSpan(
                              text: ' rotates.',
                              style: TextStyle(fontSize: 18, color: Colors.red),
                            ),
                          ],
                        ),
                        overflow: TextOverflow.visible),
                  )),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: phHeight / (800 / 30)),
                  child: const Image(
                    image: AssetImage('images/earth.png'),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 30), left: phWidth / (360 / 13)),
                  child: const AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: "Earth's rotation",
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                            text:
                                ': The Earth has angular momentum because it is rotating on its axis.\n\nThe conservation of angular momentum helps explain why the length of a day on Earth remains constant, even though the Earth is slowing down due to tidal forces.',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ]),
                      overflow: TextOverflow.visible),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: phHeight / (800 / 30)),
                  child: const Image(
                    image: AssetImage('images/helicopter.png'),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 30), left: phWidth / (360 / 13)),
                  child: const AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'a helicopter can be considered as ',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextSpan(
                          text: 'having angular momentum',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                            text:
                                '. When a helicopter rotor blade rotates, it has angular momentum because it is rotating around its axis.\n\nThe total angular momentum of a helicopter includes ',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        TextSpan(
                          text:
                              'the angular momentum of the rotor blades, as well as the angular momentum of the rest of the helicopter ',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                          text:
                              '(body and engine).\n\nThe conservation of angular momentum is important for helicopters because it affects their stability and control in flight.',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ]),
                      overflow: TextOverflow.visible),
                ),
              ),
              Center(
                child: Padding(
                    padding: EdgeInsets.only(top: phHeight / (800 / 50)),
                    child: const AutoSizeText.rich(
                        TextSpan(
                            text: 'Unit of Angular Momentum',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        overflow: TextOverflow.visible)),
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 30),
                        left: phWidth / (360 / 20),
                        right: phWidth / (360 / 5)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: phWidth / (360 / 95),
                          child: const AutoSizeText.rich(
                              TextSpan(children: [
                                TextSpan(
                                  text: 'In ',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                TextSpan(
                                    text: 'SI ',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.red)),
                                TextSpan(
                                  text: 'or ',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                TextSpan(
                                    text: 'M.K.S',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.red)),
                              ]),
                              overflow: TextOverflow.visible),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: phWidth / (360 / 50)),
                          child: SizedBox(
                            width: phWidth / (360 / 60),
                            child: const AutoSizeText.rich(
                                TextSpan(children: [
                                  TextSpan(
                                    text: 'In ',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  TextSpan(
                                      text: 'C.G.S ',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.red)),
                                ]),
                                overflow: TextOverflow.visible),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: phWidth / (360 / 50)),
                          child: SizedBox(
                            width: phWidth / (360 / 50),
                            child: const AutoSizeText.rich(
                                TextSpan(children: [
                                  TextSpan(
                                    text: 'In ',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  TextSpan(
                                      text: 'F.P.S ',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.red)),
                                ]),
                                overflow: TextOverflow.visible),
                          ),
                        )
                      ],
                    )),
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 30), left: phWidth / (360 / 30)),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          height: phHeight / (800 / 30),
                          width: phWidth / (360 / 80),
                          child: const Center(
                            child: AutoSizeText('kgm\u00b2s\u207B\u00b9',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 255, 17, 0))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: phWidth / (360 / 40)),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            height: phHeight / (800 / 30),
                            width: phWidth / (360 / 80),
                            child: const Center(
                              child: AutoSizeText('gcm\u00b2s\u207B\u00b9',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 255, 17, 0))),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: phWidth / (360 / 30)),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white),
                            height: phHeight / (800 / 30),
                            width: phWidth / (360 / 80),
                            child: const Center(
                              child: AutoSizeText('slft\u00b2s\u207B\u00b9',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 255, 17, 0))),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 30), left: phWidth / (360 / 13)),
                  child: const AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'We can use',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextSpan(
                          text: ' Newton(N)',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                            text: ' for the',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        TextSpan(
                          text: ' unit of angular momentum.',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                      ]),
                      overflow: TextOverflow.visible),
                ),
              ),
              Center(
                child: Padding(
                    padding: EdgeInsets.only(top: phHeight / (800 / 50)),
                    child: const AutoSizeText.rich(
                        TextSpan(
                            text: 'Law of conservation of Angular Momentum',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        overflow: TextOverflow.visible)),
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 30), left: phWidth / (360 / 13)),
                  child: const AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text:
                              'The law of conservation of angular momentum is a fundamental principle in physics that states that',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextSpan(
                          text:
                              ' the total angular momentum of a system remains constant if no external torque acts on it.',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                            text:
                                '\n\nAngular momentum is a measure of the amount of rotational motion that an object has.',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        TextSpan(
                          text:
                              '\nIt is defined as the product of the moment of inertia and the angular velocity of an object.',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                          text:
                              '\nThe moment of inertia is a measure of how difficult it is to change the rotational motion of an object.',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ]),
                      overflow: TextOverflow.visible),
                ),
              ),
              Row(
                children: [
                  Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: phHeight / (800 / 30),
                          left: phWidth / (360 / 50)),
                      child: const Image(
                        image: AssetImage('images/person1.png'),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: phHeight / (800 / 30),
                          left: phWidth / (360 / 100)),
                      child: const Image(
                        image: AssetImage('images/person2.png'),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 30), left: phWidth / (360 / 13)),
                  child: const AutoSizeText.rich(
                      TextSpan(
                          text: 'In mathematical form..,',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      overflow: TextOverflow.visible),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: phHeight / (800 / 20)),
                  child: const AutoSizeText.rich(
                      TextSpan(
                        text: 'L\u2080 = L',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      overflow: TextOverflow.visible),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: phHeight / (800 / 20)),
                  child: const AutoSizeText.rich(
                      TextSpan(
                        text: 'I\u2080 + ω\u2080 = I + ω',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      overflow: TextOverflow.visible),
                ),
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 30), left: phWidth / (360 / 13)),
                  child: const AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text:
                              'The law of conservation of angular momentum is based on the',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextSpan(
                          text: ' principle of conservation of energy. ',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                            text: '\n\nIf there is',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        TextSpan(
                          text: ' no external torque acting on a system',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                          text: ', then the total energy of the system remains',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextSpan(
                          text: 'constant. ',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                          text:
                              '\n\nSince angular momentum is a component of the total energy of the system, it too must remain constant if there is no external torque acting on the system.',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ]),
                      overflow: TextOverflow.visible),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: phHeight / (800 / 20)),
                  child: const Image(
                    image: AssetImage('images/solar.png'),
                  ),
                ),
              ),
              Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 30),
                        left: phWidth / (360 / 20),
                        right: phWidth / (360 / 5)),
                    child: const AutoSizeText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'A planet of',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            TextSpan(
                                text: ' mass 4 x 10\u00b2\u2074 kg',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text: ' orbits the sun at a',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text:
                                    ' distance of 1.5 x 10\u00b9\u00b9 meters',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text: ' with a period of',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: ' 365 days.',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text:
                                    ' Due to gravitational interactions with another planet, the distance of this planet from the sun is doubled. What will be the',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: ' new period of revolution of the planet',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text:
                                    "?\n\nThe angular momentum of a planet in its orbit around the sun is conserved, assuming there are no external torques acting on it. This means that the product of the planet's moment of inertia and its angular velocity is constant.\n\nThe moment of inertia of a planet is given by the formula",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: ' I = mr\u00b2',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text: ', where',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: " m is the planet's mass",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                                text: ' and',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: ' r is its distance from the sun.',
                                style:
                                    TextStyle(fontSize: 18, color: Colors.red)),
                            TextSpan(
                              text:
                                  "Therefore, the planet's moment of inertia before and after the change in distance from the sun is:",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            TextSpan(
                              text:
                                  '\n\n\nI\u2080 = m\u2080r\u2080\u00b2 = (4 x 10\u00b2\u2074 kg) (1.5 x 10\u00b9\u00b9 m)\u00b2\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t= 1.35 x 10\u2074\u2076 kgm\u00b2',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  '\n\nI\t\t = mr\u00b2 \t\t= (4 x 10\u00b2\u2074 kg) (3.0 x 10\u00b9\u00b9 m)\u00b2\n\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t= 1.08 x 10\u2074\u2077 kgm\u00b2',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text:
                                  "\n\n\nThe planet's initial period of revolution is",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            TextSpan(
                              text: ' 365 days',
                              style: TextStyle(fontSize: 18, color: Colors.red),
                            ),
                            TextSpan(
                                text: ', or',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                              text: ' T1 = 31,536,000',
                              style: TextStyle(fontSize: 18, color: Colors.red),
                            ),
                            TextSpan(
                              text:
                                  ' seconds.\n\nTo find the new period of revolution, we can use',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            TextSpan(
                              text:
                                  ' the formula for the angular velocity of a planet in circular motion',
                              style: TextStyle(fontSize: 18, color: Colors.red),
                            ),
                            TextSpan(
                              text: ':',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                        overflow: TextOverflow.visible),
                  )),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: phHeight / (800 / 20)),
                  child: const AutoSizeText.rich(
                      TextSpan(
                        text: 'ω = 2π / T',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      overflow: TextOverflow.visible),
                ),
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 30), left: phWidth / (360 / 13)),
                  child: const AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text:
                              'Where ω is the angular velocity and T is the period of revolution.',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextSpan(
                          text:
                              ' Since the angular momentum of the planet is conserved, we can equate the initial and final angular momenta as',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                          text: ':',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ]),
                      overflow: TextOverflow.visible),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: phHeight / (800 / 20)),
                  child: const AutoSizeText.rich(
                      TextSpan(
                        text:
                            'I\u2080ω\u2080 = Iω\n\nSolving for ω, we get:\n\nω = (I\u2080ω\u2080) / I',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      overflow: TextOverflow.visible),
                ),
              ),
              Align(
                alignment: const Alignment(-0.9, 1),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 30), left: phWidth / (360 / 13)),
                  child: const AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                          text:
                              'Substituting ω = 2π / T, we can solve for the new period T2:\nT2 = 2π (I / I\u2080) x T1',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextSpan(
                          text:
                              '\n\nSubstituting the values of I\u2080, I, and T1, we get:\nT2 = 2π((1.08 x 10\u2074\u2077 kgm\u00b2) / (1.35 x 10\u2074\u2076 kgm\u00b2)) * 31,536,000 s\nT2 = 2920 days\n\nTherefore, the new period of revolution of the planet is approximately',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        TextSpan(
                          text: ' 2920 days',
                          style: TextStyle(fontSize: 18, color: Colors.red),
                        ),
                        TextSpan(
                          text: '.\n\n\n\n\n\n\n\n',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ]),
                      overflow: TextOverflow.visible),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
