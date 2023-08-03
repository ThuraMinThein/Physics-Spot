import 'package:auto_size_text/auto_size_text.dart';

import 'energy_cal.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'energy_def.dart';
import 'main.dart';

// ignore: must_be_immutable
class EnergyFalse extends StatefulWidget {
  EnergyFalse();
  static double? e1, e2, m, p1v, p1h, p2v, p2h;

  double g = 9.8;
  double? sqp1v;
  double? sqp2v;

  EnergyFalse.getData(e1E, e2E, mE, p1vE, p1hE, p2vE, p2hE) {
    e1 = e1E;
    e2 = e2E;
    m = mE;
    p1v = p1vE;
    p1h = p1hE;
    p2v = p2vE;
    p2h = p2hE;
  }

  squareValue() {
    sqp1v = p1v! * p1v!;
    sqp2v = p2v! * p2v!;
  }

  firstplaceTrueV() {
    squareValue();
    double ans1 = sqp2v! + (2 * g * p2h!) - (2 * g * p1h!);
    double ans2 = sqrt(ans1);
    return ans2;
  }

  firstplaceTrueH() {
    squareValue();
    double ans1 = sqp2v! - sqp1v! + (2 * g * p2h!);
    double ans2 = ans1 / (2 * g);
    return ans2;
  }

  secondplaceTrueV() {
    squareValue();
    double ans1 = sqp1v! + (2 * g * p1h!) - (2 * g * p2h!);
    double ans2 = sqrt(ans1);
    return ans2;
  }

  secondplaceTrueh() {
    squareValue();
    double ans1 = sqp1v! - sqp2v! + (2 * g * p1h!);
    double ans2 = ans1 / (2 * g);
    return ans2;
  }

  @override
  EnergyState createState() => EnergyState();
}

class EnergyState extends State<EnergyFalse> {
  int selectedContainerIndex = -1;
  EnergyFalse energyFalse = EnergyFalse();

  void selectContainer(int index) {
    setState(() {
      selectedContainerIndex = index;
    });
  }

  void preformAction() {
    if (selectedContainerIndex != -1) {
      switch (selectedContainerIndex) {
        case 0:
          EnergyMain.funCheck = 1;
          break;
        case 1:
          EnergyMain.funCheck = 2;
          break;
        case 2:
          EnergyMain.funCheck = 3;
          break;
        case 3:
          EnergyMain.funCheck = 4;
          break;
      }
    }
  }

  @override
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
                width: phWidth / (360 / 45),
                height: phHeight / (800 / 39),
              ),
              Container(
                width: phHeight / (360 / 5),
              ),
              SizedBox(
                width: phWidth / (360 / 150),
                height: phHeight / (800 / 25),
                child: const AutoSizeText(
                  'Not Isolated system',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              //home and defination IconButtons in appbar
              Padding(
                padding: EdgeInsets.only(
                    left: phWidth / (360 / 10), top: phHeight / (800 / 5)),
                child: Row(children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PhysicsSpot()),
                        ModalRoute.withName('/main'),
                      );
                    }, //Add home page function here
                    icon: const Icon(Icons.home_rounded),
                    iconSize: phWidth / (360 / 40),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EnergyDef()),
                      );
                    }, //Add defination page function here
                    icon: const Icon(Icons.menu_book),
                    iconSize: phWidth / (360 / 40),
                  )
                ]),
              )
            ])),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: phHeight / (800 / 15)),
            child: SizedBox(
                height: phHeight / (800 / 38),
                child: const Center(
                  child: AutoSizeText(
                    'Sorry :(',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 18, 1)),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 25), left: phWidth / (360 / 20)),
            child: Row(children: [
              SizedBox(
                width: phWidth / (360 / 120),
                height: phHeight / (800 / 58),
                child: const AutoSizeText(
                  'First event,\nTotal E ans: ',
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 80)),
                child: SizedBox(
                  width: phWidth / (360 / 120),
                  height: phHeight / (800 / 58),
                  child: const AutoSizeText(
                    'Second event,\nTotal E ans: ',
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
            padding: EdgeInsets.only(
                top: phHeight / (800 / 15), left: phWidth / (360 / 18)),
            child: Row(children: [
              Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF274978),
                      borderRadius: BorderRadius.circular(12)),
                  width: phWidth / (360 / 120),
                  height: phHeight / (800 / 38),
                  child: Center(
                      child: AutoSizeText(
                    '${EnergyFalse.e1}', // total energy ans at the first place
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ))),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 30)),
                child: const AutoSizeText(
                  '≠',
                  style: TextStyle(
                      fontSize: 50,
                      //fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 220, 15, 0)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 30)),
                child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF274978),
                        borderRadius: BorderRadius.circular(12)),
                    width: phWidth / (360 / 120),
                    height: phHeight / (800 / 38),
                    child: Center(
                        child: AutoSizeText(
                      '${EnergyFalse.e2}', // total energy at second place
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
                top: phHeight / (800 / 25), left: phWidth / (360 / 10)),
            child: SizedBox(
              height: phHeight / (800 / 44),
              width: phWidth / (360 / 340),
              child: const AutoSizeText(
                'Dear User, please check your values!\nYour values are not in right proportion',
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: phHeight / (800 / 35)),
            child: SizedBox(
                height: phHeight / (800 / 38),
                child: const Center(
                  child: AutoSizeText(
                    'But :)',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 12, 228, 19)),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 20), left: phWidth / (360 / 10)),
            child: SizedBox(
              height: phHeight / (800 / 45),
              width: phWidth / (360 / 340),
              child: const AutoSizeText(
                'In your values, we suggest you to select to use one of these values:',
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 20), left: phWidth / (360 / 0)),
            child: SizedBox(
              height: phHeight / (800 / 90),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: GestureDetector(
                        onTap: () =>
                            energyFalse.firstplaceTrueV().toString() != 'NaN' &&
                                    energyFalse.firstplaceTrueV().toString() !=
                                        'Infinity'
                                ? selectContainer(0)
                                : selectContainer(-1),
                        child: Container(
                          width: phWidth / (360 / 150),
                          height: phHeight / (800 / 80),
                          decoration: BoxDecoration(
                              color: selectedContainerIndex == 0
                                  ? const Color.fromARGB(255, 62, 250, 24)
                                  : const Color.fromARGB(255, 128, 148, 177),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              SizedBox(
                                height: phHeight / (800 / 20),
                                child: const AutoSizeText(
                                  'First place velocity',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                height: phHeight / (800 / 60),
                                decoration: const BoxDecoration(
                                    color: Color(0xFF274978),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                child: Center(
                                  child: AutoSizeText(
                                    '${energyFalse.firstplaceTrueV()}',
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: GestureDetector(
                        onTap: () =>
                            energyFalse.firstplaceTrueH().toString() != 'NaN' &&
                                    energyFalse.firstplaceTrueH().toString() !=
                                        'Infinity'
                                ? selectContainer(1)
                                : selectContainer(-1),
                        child: Container(
                          width: phWidth / (360 / 150),
                          height: phHeight / (800 / 80),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selectedContainerIndex == 1
                                ? const Color.fromARGB(255, 62, 250, 24)
                                : const Color.fromARGB(255, 128, 148, 177),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: phHeight / (800 / 20),
                                child: const AutoSizeText(
                                  'First place height',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                height: phHeight / (800 / 60),
                                decoration: const BoxDecoration(
                                    color: Color(0xFF274978),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                child: Center(
                                  child: AutoSizeText(
                                    '${energyFalse.firstplaceTrueH()}',
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: GestureDetector(
                        onTap: () =>
                            energyFalse.secondplaceTrueV().toString() !=
                                        'NaN' &&
                                    energyFalse.secondplaceTrueV().toString() !=
                                        'Infinity'
                                ? selectContainer(2)
                                : selectContainer(-1),
                        child: Container(
                          width: phWidth / (360 / 150),
                          height: phHeight / (800 / 80),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selectedContainerIndex == 2
                                ? const Color.fromARGB(255, 62, 250, 24)
                                : const Color.fromARGB(255, 128, 148, 177),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: phHeight / (800 / 20),
                                child: const AutoSizeText(
                                  'Second place velocity',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                height: phHeight / (800 / 60),
                                decoration: const BoxDecoration(
                                    color: Color(0xFF274978),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                child: Center(
                                  child: AutoSizeText(
                                    '${energyFalse.secondplaceTrueV()}',
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3),
                      child: GestureDetector(
                        onTap: () =>
                            energyFalse.secondplaceTrueh().toString() !=
                                        'NaN' &&
                                    energyFalse.secondplaceTrueh().toString() !=
                                        'Infinity'
                                ? selectContainer(3)
                                : selectContainer(-1),
                        child: Container(
                          width: phWidth / (360 / 150),
                          height: phHeight / (800 / 80),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selectedContainerIndex == 3
                                ? const Color.fromARGB(255, 62, 250, 24)
                                : const Color.fromARGB(255, 128, 148, 177),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: phHeight / (800 / 20),
                                child: const AutoSizeText(
                                  'Second place height',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Container(
                                height: phHeight / (800 / 60),
                                decoration: const BoxDecoration(
                                    color: Color(0xFF274978),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                child: Center(
                                  child: AutoSizeText(
                                    '${energyFalse.secondplaceTrueh()}',
                                    style: const TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 35), left: phWidth / (360 / 20)),
            child: Row(children: [
              ElevatedButton(
                onPressed: () {
                  EnergyMain.anscheck = 'cancel';
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EnergyCalculatorMain()));
                }, //add function for cancel button
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all<Size>(
                        Size(phWidth / (360 / 125), phHeight / (800 / 34.9))),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    elevation: const MaterialStatePropertyAll(4),
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 250, 24, 24))),
                child: const AutoSizeText(
                  'CANCEL',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 75)),
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedContainerIndex != -1) {
                      preformAction();
                      EnergyMain.anscheck = 'ok';
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EnergyCalculatorMain()));
                    }
                  }, //add function for OK button
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(
                          Size(phWidth / (360 / 125), phHeight / (800 / 34.9))),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      elevation: const MaterialStatePropertyAll(4),
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(255, 62, 250, 24))),
                  child: const AutoSizeText(
                    'OK',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
