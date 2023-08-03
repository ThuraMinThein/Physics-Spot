import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'calculate_function.dart';

// ignore: use_key_in_widget_constructors
class AngularCalculatorMain extends StatefulWidget {
  @override
  AngularMain createState() => AngularMain();
}

class AngularMain extends State<AngularCalculatorMain> {
  final TextEditingController _r = TextEditingController();
  final TextEditingController _m = TextEditingController();
  final TextEditingController _v1 = TextEditingController();
  final TextEditingController _m2 = TextEditingController();
  final TextEditingController _v2 = TextEditingController();

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
          child: Row(
            children: [
              Image(
                image: const AssetImage('images/angular_Icon.png'),
                width: phWidth / (360 / 58),
                height: phHeight / (800 / 39),
              ),
              SizedBox(
                height: phHeight / (800 / 20),
                child: const AutoSizeText(
                  'Angular Momentum Conservation',
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
              alignment: const Alignment(-0.9, 2),
              child: Padding(
                padding: EdgeInsets.only(
                  top: phHeight / (800 / 50),
                  left: phWidth / (360 / 24),
                ),
                child: SizedBox(
                    width: phWidth / (360 / 300),
                    height: phHeight / (800 / 35),
                    child: TextField(
                        controller: _r,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'm',
                            suffixStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 147, 176, 255)),
                            label: AutoSizeText('Radius of object',
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
                    top: phHeight / (800 / 60), left: phWidth / (360 / 24)),
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
                                color: Color.fromARGB(255, 147, 176, 255)),
                            label: AutoSizeText('First mass of object',
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
                      top: phHeight / (800 / 70), left: phWidth / (360 / 24)),
                  child: SizedBox(
                      width: phWidth / (360 / 300),
                      height: phHeight / (800 / 35),
                      child: TextField(
                          controller: _v1,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xFF274978),
                              suffixText: 'rads\u207B\u00b9',
                              suffixStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 147, 176, 255)),
                              label: AutoSizeText('First velocity of object',
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
                    top: phHeight / (800 / 90), left: phWidth / (360 / 24)),
                child: SizedBox(
                    width: phWidth / (360 / 300),
                    height: phHeight / (800 / 35),
                    child: TextField(
                        controller: _m2,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'kg',
                            suffixStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 147, 176, 255)),
                            label: AutoSizeText('Second mass of object',
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
                    top: phHeight / (800 / 70), left: phWidth / (360 / 24)),
                child: SizedBox(
                    width: phWidth / (360 / 300),
                    height: phHeight / (800 / 35),
                    child: TextField(
                        controller: _v2,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF274978),
                            suffixText: 'rads\u207B\u00b9',
                            suffixStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 147, 176, 255)),
                            label: AutoSizeText('Second velocity of object',
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
                        top: phHeight / (800 / 65), left: phWidth / (360 / 25)),
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
                                Color.fromARGB(255, 164, 167, 163))),
                        child: const AutoSizeText(
                          'Clear',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0),
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
                              Color.fromARGB(171, 255, 255, 255))),
                      child: const AutoSizeText(
                        'Calculate',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 0, 0, 0),
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

  String? r, m, v1, m2, v2;
  double? rR, mM, vV1, mM2, vV2, sqr, i, w, a, b, o, f;

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
              'Dear user, \n\n* If you want to know one of these 5 values, you need to input at least 4 values, but you need to input Radius of Object\n\n* If you want Total "L", you need to input all 5 values',
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

  firstMass() {
    doValue();
    double ans = (mM2! * vV2!) / vV1!;
    return ans;
  }

  firstVelocity() {
    doValue();
    double ans = (mM2! * vV2!) / mM!;
    return ans;
  }

  secondMass() {
    doValue();
    double ans = (mM! * vV1!) / vV2!;
    return ans;
  }

  secondVelocity() {
    doValue();
    double ans = (mM! * vV1!) / mM2!;
    return ans;
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
    if (rR != null && mM != null && vV1 != null && mM2 != null && vV2 != null) {
      sqr = rR! * rR!;
      o = (mM! * sqr!) * (vV1! / rR!);
      f = (mM2! * sqr!) * (vV2! / rR!);

      if (o == f) {
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
      _m.clear();
      _m.text = firstMass().toString();
      funCheck = null;
    } else if (funCheck == 2) {
      _v1.clear();
      _v1.text = firstVelocity().toString();
      funCheck = null;
    } else if (funCheck == 3) {
      _m2.clear();
      _m2.text = secondMass().toString();
      funCheck = null;
    } else if (funCheck == 4) {
      _v2.clear();
      _v2.text = secondVelocity().toString();
      funCheck = null;
    }
  }

  void doValue() {
    r = _r.text;
    m = _m.text;
    v1 = _v1.text;
    m2 = _m2.text;
    v2 = _v2.text;

    rR = double.tryParse(r!);
    mM = double.tryParse(m!);
    vV1 = double.tryParse(v1!);
    mM2 = double.tryParse(m2!);
    vV2 = double.tryParse(v2!);
  }

  void clearTextfield() {
    _r.clear();
    _m.clear();
    _v1.clear();
    _m2.clear();
    _v2.clear();
  }

  checkingForCalculatoreFun() {
    doValue();
    AngularCalculatorFun calfun = AngularCalculatorFun();
    if (rR == null) {
      _showdialogfun(context);
    } else if (mM == null) {
      var returnValue = calfun.firstMass(rR, mM, vV1, mM2, vV2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _m.text = returnValue.toString();
        }
      }
    } else if (vV1 == null) {
      var returnValue = calfun.firstVelocity(rR, mM, vV1, mM2, vV2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _v1.text = returnValue.toString();
        }
      }
    } else if (mM2 == null) {
      var returnValue = calfun.secondMass(rR, mM, vV1, mM2, vV2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _m2.text = returnValue.toString();
        }
      }
    } else if (vV2 == null) {
      var returnValue = calfun.secondVelocity(rR, mM, vV1, mM2, vV2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        if (returnValue.toString() == 'NaN' ||
            returnValue.toString() == 'Infinity') {
          _naNTracker(context);
        } else {
          _v2.text = returnValue.toString();
        }
      }
    }
    // Find Total Angular momentum
    else {
      var returnValue = calfun.totalAngular(rR, mM, vV1, mM2, vV2);

      if (returnValue == false) {
        _showdialogfun(context);
      } else {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => calfun.totalAngular(rR, mM, vV1, mM2, vV2),
            ));
      }
    }
  }
}
