import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'calculate_function.dart';

// ignore: use_key_in_widget_constructors
class EnergyCalculatorMain extends StatefulWidget {
  @override
  EnergyMain createState() => EnergyMain();
}

class EnergyMain extends State<EnergyCalculatorMain> {
  final TextEditingController _m = TextEditingController();
  final TextEditingController _p1v = TextEditingController();
  final TextEditingController _p1h = TextEditingController();
  final TextEditingController _p2v = TextEditingController();
  final TextEditingController _p2h = TextEditingController();

  @override
  Widget build(BuildContext context) {
    clearTextfield.runtimeType;
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
          child: Row(
            children: [
              Image(
                image: const AssetImage('images/energy_Icon.png'),
                width: phWidth / (360 / 58),
                height: phHeight / (800 / 39),
              ),
              SizedBox(
                width: phWidth / (360 / 250),
                height: phHeight / (800 / 20),
                child: const AutoSizeText(
                  '   Energy Conservation Law',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: const Alignment(-0.9, 0),
              child: Padding(
                padding: EdgeInsets.only(
                  top: phHeight / (800 / 35),
                  left: phWidth / (360 / 24),
                ),
                child: SizedBox(
                  height: phHeight / (800 / 21),
                  child: const AutoSizeText(
                      'Acceleration due to gravity = 10 ms\u207B\u00b2',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255))),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, 2),
              child: Padding(
                padding: EdgeInsets.only(
                  top: phHeight / (800 / 35),
                  left: phWidth / (360 / 24),
                ),
                child: SizedBox(
                    width: phWidth / (360 / 300),
                    height: phHeight / (800 / 35),
                    child: TextField(
                        controller: _m,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'kg',
                            suffixStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 36, 184, 41)),
                            label: AutoSizeText('Mass',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)))))),
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, 0),
              child: Padding(
                padding: EdgeInsets.only(
                  top: phHeight / (800 / 45),
                  left: phWidth / (360 / 24),
                ),
                child: const AutoSizeText('At the first place',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255))),
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, 0),
              child: Padding(
                padding: EdgeInsets.only(
                    top: phHeight / (800 / 35), left: phWidth / (360 / 24)),
                child: SizedBox(
                    width: phWidth / (360 / 300),
                    height: phHeight / (800 / 35),
                    child: TextField(
                        controller: _p1v,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'ms\u207B\u00b9',
                            suffixStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 36, 184, 41)),
                            label: AutoSizeText('Velocity of the object',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)))))),
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, 0),
              child: Padding(
                  padding: EdgeInsets.only(
                      top: phHeight / (800 / 35), left: phWidth / (360 / 24)),
                  child: SizedBox(
                      width: phWidth / (360 / 300),
                      height: phHeight / (800 / 35),
                      child: TextField(
                          controller: _p1h,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xFF274978),
                              suffixText: 'm',
                              suffixStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 36, 184, 41)),
                              label: AutoSizeText('Height of the object',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(25))))))),
            ),
            Align(
              alignment: const Alignment(-0.9, 0),
              child: Padding(
                padding: EdgeInsets.only(
                    top: phHeight / (800 / 45), left: phWidth / (360 / 24)),
                child: const AutoSizeText('At the second place',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255))),
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, 0),
              child: Padding(
                padding: EdgeInsets.only(
                    top: phHeight / (800 / 35), left: phWidth / (360 / 24)),
                child: SizedBox(
                    width: phWidth / (360 / 300),
                    height: phHeight / (800 / 35),
                    child: TextField(
                        controller: _p2v,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'ms\u207B\u00b9',
                            suffixStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 36, 184, 41)),
                            label: AutoSizeText('Velocity of the object',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)))))),
              ),
            ),
            Align(
              alignment: const Alignment(-0.9, 0),
              child: Padding(
                padding: EdgeInsets.only(
                    top: phHeight / (800 / 35), left: phWidth / (360 / 24)),
                child: SizedBox(
                    width: phWidth / (360 / 300),
                    height: phHeight / (800 / 35),
                    child: TextField(
                        controller: _p2h,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'm',
                            suffixStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 36, 184, 41)),
                            label: AutoSizeText('Height of the object',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)))))),
              ),
            ),
            Row(
              children: [
                Align(
                  alignment: const Alignment(0.7, 0),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: phHeight / (800 / 60), left: phWidth / (360 / 25)),
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
                                Color.fromARGB(255, 32, 136, 7))),
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
                        top: phHeight / (800 / 60), left: phWidth / (360 / 60)),
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
                              Color.fromARGB(255, 32, 136, 7))),
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

  String? m;
  String? p1v;
  String? p1h;
  String? p2v;
  String? p2h;

  double g = 9.8;
  double? sqp1v;
  double? sqp2v;

  double? mE;
  double? p1vE;
  double? p1hE;
  double? p2vE;
  double? p2hE;
  squareValue() {
    sqp1v = p1vE! * p1vE!;
    sqp2v = p2vE! * p2vE!;
  }

  double firstplaceTrueV() {
    squareValue();
    double ans1 = sqp2v! + (2 * g * p2hE!) - (2 * g * p1hE!);
    double ans2 = sqrt(ans1);
    return ans2;
  }

  double firstplaceTrueH() {
    squareValue();
    double ans1 = sqp2v! - sqp1v! + (2 * g * p2hE!);
    double ans2 = ans1 / (2 * g);
    return ans2;
  }

  double secondplaceTrueV() {
    squareValue();
    double ans1 = sqp1v! + (2 * g * p1hE!) - (2 * g * p2hE!);
    double ans2 = sqrt(ans1);
    return ans2;
  }

  double secondplaceTrueh() {
    squareValue();
    double ans1 = sqp1v! - sqp2v! + (2 * g * p1hE!);
    double ans2 = ans1 / (2 * g);
    return ans2;
  }

  void doValue() {
    m = _m.text;
    p1v = _p1v.text;
    p1h = _p1h.text;
    p2v = _p2v.text;
    p2h = _p2h.text;

    mE = double.tryParse(m!);
    p1vE = double.tryParse(p1v!);
    p1hE = double.tryParse(p1h!);
    p2vE = double.tryParse(p2v!);
    p2hE = double.tryParse(p2h!);
  }

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
              'Dear user, \n\n* If you want to know one of these 5 values, you need to input at least 4 values, but you need to input mass\n\n* If you want Total "E", you need to input all 5 values',
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
            title: Text(
              'Invalid Value',
              style: TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 255, 17, 0)),
            ),
            content: Text(
              "There is an inconsistency in the given values. Please double-check the information provided for the objects' masses and velocities to ensure accuracy.",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          );
        });
  }

  void ansTrue() async {
    checkingForCalculatoreFun();
    while (anscheck == null) {
      await Future.delayed(const Duration(milliseconds: 0));
    }
    if (anscheck == 'back') {
      clearTextfield();
      anscheck = null;
    }
  }

  void ansFalse() async {
    checkingForCalculatoreFun();

    while (anscheck == null) {
      await Future.delayed(const Duration(milliseconds: 0));
    }

    if (anscheck == 'ok') {
      textfieldSetValueandCheck();
      anscheck = null;
    }
    if (anscheck == 'cancel') {
      clearTextfield();
      anscheck = null;
    }
  }

  void checkForChangeValueOrClearValue() {
    doValue();
    if (mE != null &&
        p1vE != null &&
        p1hE != null &&
        p2vE != null &&
        p2hE != null) {
      double sqp1v = p1vE! * p1vE!;
      double sqp2v = p2vE! * p2vE!;
      double e1 = mE! * ((g * p1hE!) + (1 / 2 * sqp1v));
      double e2 = mE! * ((g * p2hE!) + (1 / 2 * sqp2v));

      if (e1 == e2) {
        ansTrue();
      } else {
        ansFalse();
      }
    } else {
      checkingForCalculatoreFun();
    }
  }

  void textfieldSetValueandCheck() async {
    if (funCheck == 1) {
      _p1v.clear();
      _p1v.text = firstplaceTrueV().toString();
      funCheck = null;
    } else if (funCheck == 2) {
      _p1h.clear();
      _p1h.text = firstplaceTrueH().toString();
      funCheck = null;
    } else if (funCheck == 3) {
      _p2v.clear();
      _p2v.text = secondplaceTrueV().toString();
      funCheck = null;
    } else if (funCheck == 4) {
      _p2h.clear();
      _p2h.text = secondplaceTrueh().toString();
      funCheck = null;
    }
  }

  void clearTextfield() {
    _m.clear();
    _p1v.clear();
    _p1h.clear();
    _p2v.clear();
    _p2h.clear();
  }

  checkingForCalculatoreFun() {
    doValue();
    EnergyCalculatorFun calfun = EnergyCalculatorFun();

    if (mE == null) {
      _showdialogfun(context);
    } else if (p1vE == null) {
      var returnValue = calfun.firstplaceVelocity(mE, p1vE, p1hE, p2vE, p2hE);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _p1v.text = returnValue.toString();
        }
      }
    } else if (p1hE == null) {
      var returnValue = calfun.firstplceHeight(mE, p1vE, p1hE, p2vE, p2hE);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _p1h.text = returnValue.toString();
        }
      }
    } else if (p2vE == null) {
      var returnValue = calfun.secondplaceVelocity(mE, p1vE, p1hE, p2vE, p2hE);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _p2v.text = returnValue.toString();
        }
      }
    } else if (p2hE == null) {
      var returnValue = calfun.secondplaceHeight(mE, p1vE, p1hE, p2vE, p2hE);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _p2h.text = returnValue.toString();
        }
      }
    }
    // Find Total Energy
    else {
      var returnValue = calfun.totalEnergy(mE, p1vE, p1hE, p2vE, p2hE);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  calfun.totalEnergy(mE, p1vE, p1hE, p2vE, p2hE),
            ));
      }
    }
  }
}
