/*
started Date: 17.5.2023 (Wednesday)
Momentum calculate page and Answer-True/False page
In Momentum calculate page there are six text fields and one buttom

*/

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'calculate_function.dart';

class MomentumCalculatorMain extends StatefulWidget {
  @override
  MomentumMain createState() => MomentumMain();
}

class MomentumMain extends State<MomentumCalculatorMain> {
  final TextEditingController _mA = TextEditingController();
  final TextEditingController _vA1 = TextEditingController();
  final TextEditingController _vA2 = TextEditingController();
  final TextEditingController _mB = TextEditingController();
  final TextEditingController _vB1 = TextEditingController();
  final TextEditingController _vB2 = TextEditingController();

  //If two or more textfield are empty then click clculate button , this function will run!

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
              width: phWidth / (360 / 58),
              height: phHeight / (800 / 39),
            ),
            SizedBox(
              width: phWidth / (360 / 260),
              height: phHeight / (800 / 21),
              child: const AutoSizeText(
                '    Momentum Conservation Law',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]),
        ),
      ),
      body: SingleChildScrollView(
        //only text
        child: Column(
          children: [
            Align(
                alignment: const Alignment(-0.9, 0),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 35), left: phWidth / (360 / 24)),
                  child: SizedBox(
                    height: phHeight / (800 / 21),
                    child: const AutoSizeText(
                      'First Object',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),

            //first object's mass textfield
            Align(
                alignment: const Alignment(-0.9, 0),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 35), left: phWidth / (360 / 15)),
                    child: SizedBox(
                      width: phWidth / (360 / 300),
                      height: phHeight / (800 / 35),
                      child: TextField(
                        controller: _mA, //(text:double.infinity.toString()),
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF274978),
                          suffixText: 'kg',
                          suffixStyle: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          label: AutoSizeText('Mass',
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                        ),
                      ),
                    ))),
            Align(
                alignment: const Alignment(-0.9, 0),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 35), left: phWidth / (360 / 15)),
                    child: SizedBox(
                        width: phWidth / (360 / 300),
                        height: phHeight / (800 / 35),
                        child: TextField(
                          controller: _vA1,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'ms\u207B\u00b9',
                            suffixStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            label: AutoSizeText('Velocity of first event',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          ),
                        )))),
            Align(
                alignment: const Alignment(-0.9, 0),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 35), left: phWidth / (360 / 15)),
                    child: SizedBox(
                        width: phWidth / (360 / 300),
                        height: phHeight / (800 / 35),
                        child: TextField(
                          controller: _vA2,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'ms\u207B\u00b9',
                            suffixStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            label: AutoSizeText('Velocity of second event',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          ),
                        )))),
            Align(
                alignment: const Alignment(-0.9, 0),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 35), left: phWidth / (360 / 25)),
                  child: SizedBox(
                    height: phHeight / (800 / 21),
                    child: const AutoSizeText(
                      'Second Object',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
            Align(
                alignment: const Alignment(-0.9, 0),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 35), left: phWidth / (360 / 15)),
                    child: SizedBox(
                        width: phWidth / (360 / 300),
                        height: phHeight / (800 / 35),
                        child: TextField(
                          controller: _mB,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'kg',
                            suffixStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            label: AutoSizeText('Mass',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          ),
                        )))),
            Align(
                alignment: const Alignment(-0.9, 0),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 35), left: phWidth / (360 / 15)),
                    child: SizedBox(
                        width: phWidth / (360 / 300),
                        height: phHeight / (800 / 35),
                        child: TextField(
                          controller: _vB1,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'ms\u207B\u00b9',
                            suffixStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            label: AutoSizeText('Velocity of first event',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          ),
                        )))),
            Align(
                alignment: const Alignment(-0.9, 0),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 35), left: phWidth / (360 / 15)),
                    child: SizedBox(
                        width: phWidth / (360 / 300),
                        height: phHeight / (800 / 35),
                        child: TextField(
                          controller: _vB2,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'ms\u207B\u00b9',
                            suffixStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            label: AutoSizeText('Velocity of second event',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          ),
                        )))),
            Row(
              children: [
                Align(
                  alignment: const Alignment(0.7, 0),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 40), left: phWidth / (360 / 25)),
                    child: ElevatedButton(
                        onPressed: () {
                          clearTextfield();
                        },
                        style: ButtonStyle(
                            minimumSize: MaterialStateProperty.all<Size>(Size(
                                phWidth / (360 / 125),
                                phHeight / (800 / 34.9))),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            elevation: const MaterialStatePropertyAll(4),
                            backgroundColor: const MaterialStatePropertyAll(
                                Color(0xffFC5834))),
                        child: const AutoSizeText(
                          'Clear',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                Align(
                  alignment: const Alignment(0.7, 0),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 40), left: phWidth / (360 / 60)),
                    child: ElevatedButton(
                      onPressed: () {
                        checkForChangeValueOrClearValue();
                      },
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all<Size>(Size(
                              phWidth / (360 / 125), phHeight / (800 / 34.9))),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                          elevation: const MaterialStatePropertyAll(4),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color(0xffFC5834))),
                      child: const AutoSizeText(
                        'Calculate',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static String? anscheck;
  static int? funCheck;

  double? ma, va1, va2, mb, vb1, vb2;

  String? mA, vA1, vA2, mB, vB1, vB2;

  void _showdialogfun(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          Future.delayed(const Duration(seconds: 10), () {
            Navigator.of(context).pop();
          });
          return const AlertDialog(
            backgroundColor: Colors.grey,
            title: AutoSizeText(
              'Warning',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 255, 17, 0)),
            ),
            content: AutoSizeText(
              'Dear user, \n\n* If you want to know one of these 6 values, you need to input at least 5 values\n\n* If you want Total "p", you need to input all 6 values',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          );
        });
  }

  void _naNTracker(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          Future.delayed(const Duration(seconds: 4), () {
            Navigator.of(context).pop();
          });
          return const AlertDialog(
            backgroundColor: Colors.grey,
            title: AutoSizeText(
              'Invalid Value',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 255, 17, 0)),
            ),
            content: AutoSizeText(
              "There is an inconsistency in the given values. Please double-check the information provided for the objects' masses and velocities to ensure accuracy.",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          );
        });
  }

  double secondEventCalculate() {
    doValue();

    double ans1 = (ma! * va1!) + (mb! * vb1!);
    double ans2 = ans1 / (ma! + mb!);
    return ans2;
  }

  double finalVelocity1() {
    double p1 = ((ma! * va1!) + (mb! * vb1!)) - (mb! * vb2!);
    double p2 = p1 / ma!;
    return p2;
  }

  double finalVelocity2() {
    double p1 = ((ma! * va1!) + (mb! * vb1!) - (ma! * va2!));
    double p2 = p1 / mb!;
    return p2;
  }

  void ansTrue() async {
    checkingForCalculatorFun();
    while (anscheck == null) {
      await Future.delayed(const Duration(milliseconds: 0));
    }
    if (anscheck == 'back') {
      clearTextfield();
      anscheck = null;
    }
  }

  void ansFalse() async {
    checkingForCalculatorFun();

    while (anscheck == null) {
      await Future.delayed(const Duration(milliseconds: 0));
    }

    if (anscheck == 'ok') {
      textfieldSetValue();
      anscheck = null;
    }
    if (anscheck == 'cancel') {
      clearTextfield();
      anscheck = null;
    }
  }

  void doValue() {
    mA = _mA.text;
    vA1 = _vA1.text;
    vA2 = _vA2.text;
    mB = _mB.text;
    vB1 = _vB1.text;
    vB2 = _vB2.text;

    ma = double.tryParse(mA!);
    va1 = double.tryParse(vA1!);
    va2 = double.tryParse(vA2!);
    mb = double.tryParse(mB!);
    vb1 = double.tryParse(vB1!);
    vb2 = double.tryParse(vB2!);
  }

  void checkForChangeValueOrClearValue() {
    doValue();
    if (ma != null &&
        va1 != null &&
        va2 != null &&
        mb != null &&
        vb1 != null &&
        vb2 != null) {
      if (((ma! * va1!) + (mb! * vb1!)) == ((ma! * va2!) + (mb! * vb2!))) {
        ansTrue();
      } else {
        ansFalse();
      }
    } else {
      checkingForCalculatorFun();
    }
  }

  void textfieldSetValue() {
    if (funCheck == 1) {
      _vA2.clear();
      _vB2.clear();
      _vA2.text = secondEventCalculate().toString();
      _vB2.text = secondEventCalculate().toString();
      funCheck = null;
    } else if (funCheck == 2) {
      _vA2.clear();
      _vA2.text = finalVelocity1().toString();
      funCheck = null;
    } else if (funCheck == 3) {
      _vB2.clear();
      _vB2.text = finalVelocity2().toString();
      funCheck = null;
    }
  }

  void clearTextfield() {
    _mA.clear();
    _mB.clear();
    _vA1.clear();
    _vA2.clear();
    _vB1.clear();
    _vB2.clear();
  }

  void checkingForCalculatorFun() {
    doValue();

    MomentumCalculatorFun calfun = MomentumCalculatorFun();

    if (ma == null) {
      var returnValue = calfun.mass1(ma, va1, va2, mb, vb1, vb2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _mA.text = returnValue.toString();
        }
      }
    } else if (va1 == null) {
      var returnValue = calfun.intialVelocity1(ma, va1, va2, mb, vb1, vb2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _vA1.text = returnValue.toString();
        }
      }
    } else if (va2 == null) {
      var returnValue = calfun.finalVelocity1(ma, va1, va2, mb, vb1, vb2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _vA2.text = returnValue.toString();
        }
      }
    } else if (mb == null) {
      var returnValue = calfun.mass2(ma, va1, va2, mb, vb1, vb2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _mB.text = returnValue.toString();
        }
      }
    } else if (vb1 == null) {
      var returnValue = calfun.intialVelocity2(ma, va1, va2, mb, vb1, vb2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _vB1.text = returnValue.toString();
        }
      }
    } else if (vb2 == null) {
      var returnValue = calfun.finalVelocity2(ma, va1, va2, mb, vb1, vb2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _vB2.text = returnValue.toString();
        }
      }
    }
    // Find Total Momentum
    else {
      var returnValue = calfun.totalMomentum(ma, va1, va2, mb, vb1, vb2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    calfun.totalMomentum(ma, va1, va2, mb, vb1, vb2)));
      }
    }
  }
}
