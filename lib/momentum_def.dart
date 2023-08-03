import 'package:conservation_laws_main/momentum_cal.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'main.dart';

class MomentumDef extends StatelessWidget {
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
          child: Row(
            children: [
              Image(
                image: const AssetImage('images/momentum_Icon.png'),
                width: phWidth / (360 / 58),
                height: phHeight / (800 / 39),
              ),
              SizedBox(
                width: phWidth / (360 / 120),
                height: phHeight / (800 / 26),
                child: const AutoSizeText(
                  '   Definition',
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
                              builder: (context) => MomentumCalculatorMain()),
                        );
                      }, //Add defination page function here
                      icon: const Icon(Icons.calculate),
                      iconSize: phWidth / (360 / 40),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
                      child: const AutoSizeText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Momentum',
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Color(0xffFC5834),
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text:
                                    "\n\nMomentum is a fundamental concept in physics that describes ",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: 'the motion of an object. ',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xffFC5834))),
                            TextSpan(
                                text: 'It is defined ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text:
                                    "as the product of an object's mass and its velocity.",
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xffFC5834))),
                            TextSpan(
                                text:
                                    "\n\nMomentum is a vector quantity, meaning it has both magnitude and direction. The magnitude of momentum is directly proportional to the mass and velocity of an object. The direction of momentum is the same as the direction of the object's velocity.",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white)),
                            TextSpan(
                                text: '\n\nIn mathmatical form..,',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white))
                          ],
                        ),
                      ),
                    )),
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: phHeight / (800 / 20)),
                      child: const AutoSizeText.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'p = mv',
                                style: TextStyle(
                                    fontSize: 20, color: Color(0xffFC5834)))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 20),
                        left: phWidth / (360 / 20),
                        right: phWidth / (360 / 5)),
                    child: const AutoSizeText.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'where.., p = momentum',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffFC5834))),
                          TextSpan(
                              text: '\n               m = mass',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: '\n                v = velocity',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: phHeight / (800 / 40)),
                      child: const Image(
                        image: AssetImage('images/p3.png'),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 40),
                        left: phWidth / (360 / 20),
                        right: phWidth / (360 / 5)),
                    child: const AutoSizeText.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'momentum ',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: 'of truck = ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: 'mass ',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: 'of truck * ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: 'velocity ',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: 'of truck',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\np ',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: '= 20kg * 10ms\u207B\u00b9 ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n   = 200kgms\u207B\u00b9',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\nMomentum of the truck = 200kgms\u207B\u00b9',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text:
                                  "\nSo if any object that has mass is in motion,there's momentum",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                      padding: EdgeInsets.only(top: phHeight / (800 / 50)),
                      child: const AutoSizeText.rich(
                          TextSpan(
                              text: 'Unit of Momentum',
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
                            padding:
                                EdgeInsets.only(left: phWidth / (360 / 50)),
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
                            padding:
                                EdgeInsets.only(left: phWidth / (360 / 50)),
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
                          top: phHeight / (800 / 30),
                          left: phWidth / (360 / 30)),
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
                            padding:
                                EdgeInsets.only(left: phWidth / (360 / 40)),
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
                                        color:
                                            Color.fromARGB(255, 255, 17, 0))),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: phWidth / (360 / 30)),
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
                                        color:
                                            Color.fromARGB(255, 255, 17, 0))),
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
                        top: phHeight / (800 / 30),
                        left: phWidth / (360 / 20),
                        right: phWidth / (360 / 5)),
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
                            text: ' unit of momentum.',
                            style: TextStyle(fontSize: 18, color: Colors.red),
                          ),
                        ]),
                        overflow: TextOverflow.visible),
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
                          text:
                              'Law of Conservation of Momentum\n <In Isolated System>',
                          style: TextStyle(
                              fontSize: 20, color: Color(0xffFC5834))),
                      TextSpan(
                          text:
                              '\n\nIf ther is no net external force acting on a system consisting of two bodies.the sum of the momentum of the two bodies will remain constant.',
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ])),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Center(
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
                                  'Initial total Momentum = final total Momentum',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffFC5834),
                              ),
                            ),
                            TextSpan(
                              text:
                                  '\n\nTotal p before collusion = Total p after collusion',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffFC5834),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 30), left: phWidth / (800 / 20)),
                    child: const AutoSizeText.rich(
                      TextSpan(children: [
                        TextSpan(
                            text:
                                'An object of mass 10kg collides with a stationary object of mass 5 kg.If the objects stick together and move forward at a velocity of 4ms\u207B\u00b9 ,what was the original velocity of the moving object?',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                        TextSpan(
                            text:
                                '\n\nThe problem is to find the the velocity before the collide',
                            style: TextStyle(fontSize: 18, color: Colors.white))
                      ]),
                    ),
                  ),
                ),
                Align(
                    alignment: const Alignment(-0.9, 1),
                    child: Padding(
                        padding: EdgeInsets.only(
                            top: phHeight / (800 / 30),
                            left: phWidth / (800 / 20)),
                        child: const AutoSizeText.rich(TextSpan(children: [
                          TextSpan(
                              text: 'So in this case,we can see two events',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\n{the one before collide and the one after collide}',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffFC5834))),
                        ])))),
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: phHeight / (800 / 30),
                          left: phWidth / (800 / 20)),
                      child: const AutoSizeText('before colide',
                          style: TextStyle(
                              fontSize: 20, color: Color(0xffFC5834)))),
                ),
                Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: phHeight / (800 / 30)),
                  child: const Image(
                    image: AssetImage('images/p1.png'),
                  ),
                )),
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Padding(
                      padding: EdgeInsets.only(
                          top: phHeight / (800 / 40),
                          left: phWidth / (800 / 20)),
                      child: const AutoSizeText('After colide',
                          style: TextStyle(
                              fontSize: 20, color: Color(0xffFC5834)))),
                ),
                Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: phHeight / (800 / 30)),
                  child: const Image(
                    image: AssetImage('images/p2.png'),
                  ),
                )),

                //////////////////////////////////////////////////////
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 30), left: phWidth / (800 / 20)),
                    child: const AutoSizeText.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  "\n\nthere're 2 objects in the problem.Let's consider them as ",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: 'A ',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: 'and ',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: 'B ',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: 'just in case.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nAfter the collide the velocities of 2 objects got the same magnitude which is 4ms\u207B\u00b9',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nSo by the law of Conservation of Momentum.,',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: "\n\npA + pB = pA' + pB'",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: '\n\n10 * vA + 5 (0) = (10 + 5) * 4',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\n10vA = 60',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nvA = 6ms\u207B\u00b9',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nThe original velocity of the object A = ',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: '6ms\u207B\u00b9',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(-0.9, 1),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 30), left: phWidth / (800 / 20)),
                    child: const AutoSizeText.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  'There can be some problems that have opposite directions in velocity of objects',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  'In the previous problem,object A collide object b and both of them move with the same the velocity in one direction. ',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text:
                                  "\n\nSo let's have a look into this problem....,",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nA man dived horizontally with a velocity of 1.5ms\u207B\u00b9 from a 100kg boat.If the recoil velocity of the boat is 0.9ms\u207B\u00b9 what is the mass of the man?',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nThe problem is to find the mass of a man',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text:
                                  '\n\nIn this case,we have to know if a man dived horizontally and that makes the boat move 0.9ms\u207B\u00b9 which means if he dived forward,the boat will move backward a little bit.',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nSo the velocity of the boat after diving = -0.9\u207B\u00b9',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text:
                                  "\n\nLet's consider a man as H and th boat as B",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text:
                                  '\n\nBy the law of conservation of momentum..,',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text:
                                  '\n\ntotal momentum before diving = total momentum after diving',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: "pH + pB = pH' + pB'",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text:
                                  '\n\nthe velocity of H and B are 0 before diving so their momentum before diving is 0',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(
                              text: '\n\n0 = mH * 1.5 + (100 * (-0.9))',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\n0 = 1.5mH + (-90)',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nmH = 90 / 1.5',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nmH = 60kg',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          TextSpan(
                              text: '\n\nThe mass of man = 60kg',
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFC5834))),
                          TextSpan(text: '\n\n\n\n\n')
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
