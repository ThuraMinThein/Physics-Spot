/*
started date: 12.6.2023
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:conservation_laws_main/energy_cal.dart';
import 'package:flutter/material.dart';
import 'angular_cal.dart';
import 'main.dart';
import 'angular_def.dart';

// ignore: must_be_immutable
class AngularTrue extends StatelessWidget {
  double? o, f, i, w, a, b;

  AngularTrue.getData(this.o, this.f, this.i, this.w, this.a, this.b);
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
              const AutoSizeText(
                ' Correct',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              //home and defination IconButtons in appbar
              Padding(
                padding: EdgeInsets.only(
                    left: phWidth / (360 / 70), top: phHeight / (800 / 5)),
                child: Row(children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhysicsSpot()),
                        ModalRoute.withName('/calculate'),
                      );
                    }, //Add home page function here
                    icon: const Icon(Icons.home_rounded),
                    iconSize: 45,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AngularDef()),
                      );
                    }, //Add defination page function here
                    icon: const Icon(Icons.menu_book),
                    iconSize: 45,
                  )
                ]),
              )
            ])),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: phHeight / (800 / 15),
              left: phWidth / (360 / 20),
            ),
            child: SizedBox(
              height: phHeight / (800 / 20),
              child: const AutoSizeText('Moment of inertia(first place)',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: phHeight / (800 / 10)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: phWidth / (360 / 20), top: phHeight / (800 / 15)),
                  child: SizedBox(
                    width: phWidth / (360 / 40),
                    height: phHeight / (800 / 40),
                    child: const AutoSizeText('I\u2080',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: phWidth / (360 / 5)),
                    child: Container(
                        width: phWidth / (360 / 220),
                        height: phHeight / (800 / 40),
                        decoration: BoxDecoration(
                            color: const Color(0xFF274978),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: AutoSizeText('$i',
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))))),
                Padding(
                  padding: EdgeInsets.only(
                      left: phWidth / (360 / 15), top: phHeight / (800 / 15)),
                  child: SizedBox(
                      width: phWidth / (360 / 40),
                      height: phHeight / (800 / 40),
                      child: const AutoSizeText('mr\u207B\u00b2',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 10), left: phWidth / (360 / 20)),
            child: SizedBox(
              height: phHeight / (800 / 20),
              child: const AutoSizeText(
                'Angular velocity(first event)',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: phHeight / (800 / 10)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: phWidth / (360 / 20), top: phHeight / (800 / 15)),
                  child: SizedBox(
                    width: phWidth / (360 / 40),
                    height: phHeight / (800 / 40),
                    child: const AutoSizeText('ω\u2080',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: phWidth / (360 / 5)),
                    child: Container(
                        width: phWidth / (360 / 220),
                        height: phHeight / (800 / 40),
                        decoration: BoxDecoration(
                            color: const Color(0xFF274978),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: AutoSizeText('$w',
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))))),
                Padding(
                  padding: EdgeInsets.only(
                      left: phWidth / (360 / 15), top: phHeight / (800 / 15)),
                  child: SizedBox(
                      width: phWidth / (360 / 50),
                      height: phHeight / (800 / 40),
                      child: const AutoSizeText('rads\u207B\u00b2',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: phHeight / (800 / 20),
              left: phWidth / (360 / 20),
            ),
            child: SizedBox(
              height: phHeight / (800 / 20),
              child: const AutoSizeText('Moment of inertia(second event)',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: phHeight / (800 / 10)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: phWidth / (360 / 20), top: phHeight / (800 / 15)),
                  child: SizedBox(
                      width: phWidth / (360 / 40),
                      height: phHeight / (800 / 40),
                      child: const AutoSizeText('I',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ),
                Padding(
                    padding: EdgeInsets.only(left: phWidth / (360 / 5)),
                    child: Container(
                        width: phWidth / (360 / 220),
                        height: phHeight / (800 / 40),
                        decoration: BoxDecoration(
                            color: const Color(0xFF274978),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: AutoSizeText('$a',
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))))),
                Padding(
                  padding: EdgeInsets.only(
                      left: phWidth / (360 / 15), top: phHeight / (800 / 15)),
                  child: SizedBox(
                      width: phWidth / (360 / 40),
                      height: phHeight / (800 / 40),
                      child: const AutoSizeText('mr\u207B\u00b2',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 10), left: phWidth / (360 / 20)),
            child: SizedBox(
              height: phHeight / (800 / 20),
              child: const AutoSizeText(
                'Angular velocity(second event)',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: phHeight / (800 / 10)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: phWidth / (360 / 20), top: phHeight / (800 / 15)),
                  child: SizedBox(
                      width: phWidth / (360 / 40),
                      height: phHeight / (800 / 40),
                      child: const AutoSizeText('ω',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ),
                Padding(
                    padding: EdgeInsets.only(left: phWidth / (360 / 5)),
                    child: Container(
                        width: phWidth / (360 / 220),
                        height: phHeight / (800 / 40),
                        decoration: BoxDecoration(
                            color: const Color(0xFF274978),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                            child: AutoSizeText('$b',
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))))),
                Padding(
                  padding: EdgeInsets.only(
                      left: phWidth / (360 / 15), top: phHeight / (800 / 15)),
                  child: SizedBox(
                      width: phWidth / (360 / 50),
                      height: phHeight / (800 / 40),
                      child: const AutoSizeText('rads\u207B\u00b2',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 25), left: phWidth / (360 / 20)),
            child: SizedBox(
              height: phHeight / (800 / 30),
              child: const AutoSizeText(
                'by the law of conservation of angular momentum,',
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 25), left: phWidth / (360 / 25)),
            child: Row(children: [
              SizedBox(
                width: phWidth / (360 / 130),
                height: phHeight / (800 / 35),
                child: const AutoSizeText(
                  'Total L ans,\n at first event: ',
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 70)),
                child: SizedBox(
                  width: phWidth / (360 / 130),
                  height: phHeight / (800 / 35),
                  child: const AutoSizeText(
                    'Total L ans,\n at second event: ',
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(top: phHeight / (800 / 15)),
            child: Row(children: [
              Padding(
                  padding: EdgeInsets.only(left: phWidth / (360 / 25)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF274978),
                        borderRadius: BorderRadius.circular(12)),
                    width: phWidth / (360 / 120),
                    height: phHeight / (800 / 38),
                    child: Center(
                      child: AutoSizeText(
                        '$o', // total angular momentum ans
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 25)),
                child: const AutoSizeText(
                  '=',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 25)),
                child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF274978),
                        borderRadius: BorderRadius.circular(12)),
                    width: phWidth / (360 / 120),
                    height: phHeight / (800 / 38),
                    child: Center(
                        child: AutoSizeText(
                      '$f', // total angular momentum ans
                      style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ))),
              ),
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 15), left: phWidth / (360 / 5)),
            child: ElevatedButton(
                onPressed: () {
                  AngularMain.anscheck = 'back';
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EnergyCalculatorMain()));
                },
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                        Size(phWidth / (360 / 125), phHeight / (800 / 34.9))),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    elevation: const MaterialStatePropertyAll(4),
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 255, 255, 255))),
                child: const AutoSizeText(
                  'BACK',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
          )
        ],
      ),
    );
  }
}
