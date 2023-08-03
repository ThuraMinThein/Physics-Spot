/*
Started date: 31.5.2023
Momentum answer false page, 
if total momentum calculation is false,then this page will display
 */

import 'package:auto_size_text/auto_size_text.dart';
import 'package:conservation_laws_main/momentum_cal.dart';
import 'package:flutter/material.dart';

import 'main.dart';
import 'main.dart';
import 'momentum_def.dart';

// ignore: must_be_immutable
class MomentumFalse extends StatefulWidget {
  MomentumFalse();

  static double? p1, p2, mA, vA1, vA2, mB, vB1, vB2;

  MomentumFalse.getData(p1P, p2P, mAP, vA1P, vA2P, mBP, vB1P, vB2P) {
    p1 = p1P;
    p2 = p2P;
    mA = mAP;
    vA1 = vA1P;
    vA2 = vA2P;
    mB = mBP;
    vB1 = vB1P;
    vB2 = vB2P;
  }
  secondEventCalculate() {
    double ans1 = (mA! * vA1!) + (mB! * vB1!);
    double ans2 = ans1 / (mA! + mB!);
    return ans2;
  }

  finalVelocity1() {
    double ans1 = ((mA! * vA1!) + (mB! * vB1!)) - (mB! * vB2!);
    double ans2 = ans1 / mA!;
    return ans2;
  }

  finalVelocity2() {
    double ans1 = ((mA! * vA1!) + (mB! * vB1!) - (mA! * vA2!));
    double ans2 = ans1 / mB!;
    return ans2;
  }

  @override
  MomentumState createState() => MomentumState();
}

class MomentumState extends State<MomentumFalse> {
  MomentumFalse momentumFalse = MomentumFalse();

  int selectedContainerIndex = -1;
  void selectContainer(int index) {
    setState(() {
      selectedContainerIndex = index;
    });
  }

  void preformAction() {
    if (selectedContainerIndex != -1) {
      switch (selectedContainerIndex) {
        case 0:
          MomentumMain.funCheck = 1;
          break;
        case 1:
          MomentumMain.funCheck = 2;
          break;
        case 2:
          MomentumMain.funCheck = 3;
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
                  image: const AssetImage('images/momentum_Icon.png'),
                  width: phWidth / (360 / 45),
                  height: phHeight / (800 / 39),
                ),
                Container(
                  width: phHeight / (360 / 5),
                ),
                const AutoSizeText(
                  'Not Isolated system',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
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
                          MaterialPageRoute(
                              builder: (context) => MomentumDef()),
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
                    'First event,\nTotal p ans: ',
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
                      'Second event,\nTotal p ans: ',
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
                      '${MomentumFalse.p1}', // total momentum ans first object's second event
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
                        fontSize: 50, color: Color.fromARGB(255, 220, 15, 0)),
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
                        '${MomentumFalse.p2}', // total momentum ans second object's second event
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
                height: phHeight / (800 / 50),
                width: phWidth / (360 / 340),
                child: const AutoSizeText(
                  'Dear User, please check your values!\nYour values are not in right proportion',
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: phHeight / (800 / 30)),
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
                height: phHeight / (800 / 38),
                width: phWidth / (360 / 340),
                child: const AutoSizeText(
                  'In your values, we suggest you to select to use these values for those Two Objects',
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
                              momentumFalse.secondEventCalculate().toString() !=
                                          'NaN' &&
                                      momentumFalse
                                              .secondEventCalculate()
                                              .toString() !=
                                          'Infinity'
                                  ? selectContainer(0)
                                  : selectContainer(-1),
                          child: Container(
                            width: phWidth / (360 / 150),
                            height: phHeight / (800 / 80),
                            decoration: BoxDecoration(
                                color: selectedContainerIndex == 0
                                    ? const Color(0xffFC5834)
                                    : const Color.fromARGB(255, 128, 148, 177),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: phHeight / (800 / 20),
                                  child: const AutoSizeText(
                                    'Final v of two Obj',
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
                                      '${momentumFalse.secondEventCalculate()}',
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
                          onTap: () => momentumFalse
                                          .finalVelocity1()
                                          .toString() !=
                                      'NaN' &&
                                  momentumFalse.finalVelocity1().toString() !=
                                      'Infinity'
                              ? selectContainer(1)
                              : selectContainer(-1),
                          child: Container(
                            width: phWidth / (360 / 150),
                            height: phHeight / (800 / 80),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedContainerIndex == 1
                                  ? const Color(0xffFC5834)
                                  : const Color.fromARGB(255, 128, 148, 177),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: phHeight / (800 / 20),
                                  child: const AutoSizeText(
                                    'Fianl v of first Obj',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: phWidth / (360 / 150),
                                  height: phHeight / (800 / 60),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF274978),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: Center(
                                    child: AutoSizeText(
                                      '${momentumFalse.finalVelocity1()}',
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
                          onTap: () => momentumFalse
                                          .finalVelocity2()
                                          .toString() !=
                                      'NaN' &&
                                  momentumFalse.finalVelocity2().toString() !=
                                      'Infinity'
                              ? selectContainer(2)
                              : selectContainer(-1),
                          child: Container(
                            width: phWidth / (360 / 150),
                            height: phHeight / (800 / 80),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: selectedContainerIndex == 2
                                  ? const Color(0xffFC5834)
                                  : const Color.fromARGB(255, 128, 148, 177),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: phHeight / (800 / 20),
                                  child: const AutoSizeText(
                                    'Final v of second Obj',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: phWidth / (360 / 150),
                                  height: phHeight / (800 / 60),
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF274978),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10))),
                                  child: Center(
                                    child: AutoSizeText(
                                      '${momentumFalse.finalVelocity2()}',
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
                  top: phHeight / (800 / 20), left: phWidth / (360 / 10)),
              child: SizedBox(
                width: phWidth / (360 / 340),
                child: const AutoSizeText(
                  'Would you like to use these values...?',
                  style: TextStyle(fontSize: 21, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: phHeight / (800 / 35), left: phWidth / (360 / 20)),
              child: Row(children: [
                ElevatedButton(
                  onPressed: () {
                    MomentumMain.anscheck = 'cancel';
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MomentumCalculatorMain()));
                  } //add function for cancel button
                  ,
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
                        MomentumMain.anscheck = 'ok';
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MomentumCalculatorMain()));
                      }
                    }, //add function for OK button
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(Size(
                            phWidth / (360 / 125), phHeight / (800 / 34.9))),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
        ));
  }
}
