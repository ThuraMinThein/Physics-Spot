import 'package:auto_size_text/auto_size_text.dart';
import 'package:conservation_laws_main/angular_def.dart';
import 'package:flutter/material.dart';
import 'angular_cal.dart';
import 'main.dart';

class AngularFalse extends StatefulWidget {
  AngularFalse();
  static double? o, f, m, v1, v2, m2, r, i, w, a, b;

  double g = 10;
  double? sqr;

  AngularFalse.getData(I, W, A, B, O, F, R, M, V1, M2, V2) {
    o = O;
    f = F;
    r = R;
    m = M;
    v1 = V1;
    m2 = M2;
    v2 = V2;
    i = I;
    w = W;
    a = A;
    b = B;
  }
  firsteTrueM() {
    double ans = (m2! * v2!) / v1!;
    return ans;
  }

  firsteTrueV() {
    double ans = (m2! * v2!) / m!;
    return ans;
  }

  secondeTrueM() {
    double ans = (m! * v1!) / v2!;
    return ans;
  }

  secondeTrueV() {
    double ans = (m! * v1!) / m2!;
    return ans;
  }

  @override
  AngularState createState() => AngularState();
}

class AngularState extends State<AngularFalse> {
  int selectedContainerIndex = -1;
  AngularFalse angularFalse = AngularFalse();

  void selectContainer(int index) {
    setState(() {
      selectedContainerIndex = index;
    });
  }

  void preformAction() {
    if (selectedContainerIndex != -1) {
      switch (selectedContainerIndex) {
        case 0:
          AngularMain.funCheck = 1;
          break;
        case 1:
          AngularMain.funCheck = 2;
          break;
        case 2:
          AngularMain.funCheck = 3;
          break;
        case 3:
          AngularMain.funCheck = 4;
          break;
      }
    }
  }

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
                image: const AssetImage('images/angular_Icon.png'),
                width: phWidth / (360 / 45),
                height: phHeight / (800 / 39),
              ),
              Container(
                width: phHeight / (360 / 5),
              ),
              SizedBox(
                height: phHeight / (800 / 20),
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
                child: Row(
                  children: [
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
                      iconSize: phWidth / (360 / 40),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AngularDef()),
                        );
                      }, //Add defination page function here
                      icon: const Icon(Icons.menu_book),
                      iconSize: phWidth / (360 / 40),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 20), left: phWidth / (360 / 20)),
            child: SizedBox(
              height: phHeight / (800 / 20),
              child: const AutoSizeText(
                '(First event)',
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
                      left: phWidth / (360 / 20), top: phHeight / (800 / 10)),
                  child: SizedBox(
                    width: phWidth / (360 / 30),
                    height: phHeight / (800 / 40),
                    child: const AutoSizeText('I\u2080',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: phWidth / (360 / 2)),
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF274978),
                          borderRadius: BorderRadius.circular(12)),
                      width: phWidth / (360 / 110),
                      height: phHeight / (800 / 40),
                      child: Center(
                          child: AutoSizeText('${AngularFalse.i}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: phWidth / (360 / 20), top: phHeight / (800 / 10)),
                  child: SizedBox(
                    width: phWidth / (360 / 30),
                    height: phHeight / (800 / 40),
                    child: const AutoSizeText('ω\u2080',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: phWidth / (360 / 10)),
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF274978),
                          borderRadius: BorderRadius.circular(12)),
                      width: phWidth / (360 / 110),
                      height: phHeight / (800 / 40),
                      child: Center(
                          child: AutoSizeText('${AngularFalse.w}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 15), left: phWidth / (360 / 20)),
            child: SizedBox(
              height: phHeight / (800 / 20),
              child: const AutoSizeText(
                '(Second event)',
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
                      left: phWidth / (360 / 20), top: phHeight / (800 / 10)),
                  child: SizedBox(
                      width: phWidth / (360 / 30),
                      height: phHeight / (800 / 40),
                      child: const AutoSizeText('I',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: phWidth / (360 / 2)),
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF274978),
                          borderRadius: BorderRadius.circular(12)),
                      width: phWidth / (360 / 110),
                      height: phHeight / (800 / 40),
                      child: Center(
                          child: AutoSizeText('${AngularFalse.a}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: phWidth / (360 / 20), top: phHeight / (800 / 10)),
                  child: SizedBox(
                      width: phWidth / (360 / 30),
                      height: phHeight / (800 / 40),
                      child: const AutoSizeText('ω',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ),
                Padding(
                  padding: EdgeInsets.only(left: phWidth / (360 / 10)),
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF274978),
                          borderRadius: BorderRadius.circular(12)),
                      width: phWidth / (360 / 110),
                      height: phHeight / (800 / 40),
                      child: Center(
                          child: AutoSizeText('${AngularFalse.b}',
                              style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)))),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 20), left: phWidth / (360 / 20)),
            child: SizedBox(
                height: phHeight / (800 / 30),
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
                top: phHeight / (800 / 10), left: phWidth / (360 / 20)),
            child: Row(children: [
              SizedBox(
                width: phWidth / (360 / 130),
                height: phHeight / (800 / 44),
                child: const AutoSizeText(
                  'Total L ans,\nat first event: ',
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 65)),
                child: SizedBox(
                  width: phWidth / (360 / 130),
                  height: phHeight / (800 / 44),
                  child: const AutoSizeText(
                    'Total L ans,\nat second event: ',
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
            padding: EdgeInsets.only(top: phHeight / (800 / 10)),
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: phWidth / (360 / 23)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFF274978),
                          borderRadius: BorderRadius.circular(12)),
                      width: phWidth / (360 / 120),
                      height: phHeight / (800 / 38),
                      child: Center(
                        child: AutoSizeText(
                          '${AngularFalse.o}', // total angular momentum ans
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
                    '≠',
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
                        '${AngularFalse.f}', // total angular momentum ans
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 15), left: phWidth / (360 / 20)),
            child: SizedBox(
              height: phHeight / (800 / 30),
              child: const Center(
                child: AutoSizeText(
                  'But :)',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 62, 250, 24)),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 10), left: phWidth / (360 / 10)),
            child: SizedBox(
              width: phWidth / (360 / 340),
              child: const AutoSizeText(
                'In your values, we suggest you to use one of these values:',
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 10), left: phWidth / (360 / 0)),
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
                            angularFalse.firsteTrueM().toString() != 'NaN' &&
                                    angularFalse.firsteTrueM().toString() !=
                                        'Infinity'
                                ? selectContainer(0)
                                : selectContainer(-1),
                        child: Container(
                          width: phWidth / (360 / 150),
                          height: phHeight / (800 / 80),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: selectedContainerIndex == 0
                                ? const Color.fromARGB(255, 62, 250, 24)
                                : const Color.fromARGB(255, 128, 148, 177),
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: phHeight / (800 / 20),
                                child: const AutoSizeText(
                                  'First mass of obj',
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
                                    '${angularFalse.firsteTrueM()}',
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
                            angularFalse.firsteTrueV().toString() != 'NaN' &&
                                    angularFalse.firsteTrueV().toString() !=
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
                            children: <Widget>[
                              SizedBox(
                                height: phHeight / (800 / 20),
                                child: const AutoSizeText(
                                  'First velocity of obj',
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
                                    '${angularFalse.firsteTrueV()}',
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
                            angularFalse.secondeTrueM().toString() != 'NaN' &&
                                    angularFalse.secondeTrueM().toString() !=
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
                            children: <Widget>[
                              SizedBox(
                                height: phHeight / (800 / 20),
                                child: const AutoSizeText(
                                  'Second mass of obj',
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
                                    '${angularFalse.secondeTrueM()}',
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
                            angularFalse.secondeTrueV().toString() != 'NaN' &&
                                    angularFalse.secondeTrueV().toString() !=
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
                            children: <Widget>[
                              SizedBox(
                                height: phHeight / (800 / 20),
                                child: const AutoSizeText(
                                  'Second velocity of obj',
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
                                    '${angularFalse.secondeTrueV()}',
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
                top: phHeight / (800 / 20), left: phWidth / (360 / 20)),
            child: Row(children: [
              ElevatedButton(
                onPressed: () {
                  AngularMain.anscheck = 'cancel';
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AngularCalculatorMain()));
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
                      AngularMain.anscheck = 'ok';
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AngularCalculatorMain()));
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
