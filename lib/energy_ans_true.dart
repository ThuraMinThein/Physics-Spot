import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'energy_cal.dart';
import 'energy_def.dart';

// ignore: must_be_immutable
class EnergyTrue extends StatelessWidget {
  double? e1, e2;
  EnergyTrue.getData(this.e1, this.e2);

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
                width: phWidth / (360 / 58),
                height: phHeight / (800 / 39),
              ),
              Container(
                width: phHeight / (360 / 5),
              ),
              const AutoSizeText(
                'Correct',
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
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
            padding: EdgeInsets.only(
                top: phHeight / (800 / 50), left: phWidth / (360 / 20)),
            child: Row(children: [
              SizedBox(
                width: phWidth / (360 / 140),
                height: phHeight / (800 / 45),
                child: const AutoSizeText(
                  'Total E ans,\n at first place: ',
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 25)),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF274978),
                      borderRadius: BorderRadius.circular(12)),
                  width: phWidth / (360 / 120),
                  height: phHeight / (800 / 40),
                  child: Center(
                      child: AutoSizeText(
                    '$e1', //total energy ans
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 25)),
                child: SizedBox(
                  height: phHeight / (800 / 25),
                  child: const AutoSizeText(
                    'J',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 45), left: phWidth / (360 / 20)),
            child: Row(children: [
              SizedBox(
                width: phWidth / (360 / 140),
                height: phHeight / (800 / 45),
                child: const AutoSizeText(
                  'Total E ans,\n at second place: ',
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 25)),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF274978),
                      borderRadius: BorderRadius.circular(12)),
                  width: phWidth / (360 / 120),
                  height: phHeight / (800 / 40),
                  child: Center(
                      child: AutoSizeText(
                    '$e2', // total momentum ans
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 25)),
                child: SizedBox(
                  height: phHeight / (800 / 25),
                  child: const AutoSizeText(
                    'J',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ]),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 50), left: phWidth / (360 / 20)),
            child: SizedBox(
              width: phWidth / (360 / 320),
              height: phHeight / (800 / 45),
              child: const AutoSizeText(
                'By the law of conservation of energy,',
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 35, 175, 7),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 45), left: phWidth / (360 / 20)),
            child: Row(children: [
              SizedBox(
                width: phWidth / (360 / 130),
                height: phHeight / (800 / 45),
                child: const AutoSizeText(
                  'Total E ans,\n at first place: ',
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 60)),
                child: SizedBox(
                  width: phWidth / (360 / 130),
                  height: phHeight / (800 / 45),
                  child: const AutoSizeText(
                    'Total E ans,\n at second place: ',
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
                top: phHeight / (800 / 30), left: phWidth / (360 / 18)),
            child: Row(children: [
              Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFF274978),
                      borderRadius: BorderRadius.circular(12)),
                  width: phWidth / (360 / 120),
                  height: phHeight / (800 / 40),
                  child: Center(
                      child: AutoSizeText(
                    '$e1', // total energy ans
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ))),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 25)),
                child: const AutoSizeText(
                  '=',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 35, 175, 7)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: phWidth / (360 / 25)),
                child: Container(
                    decoration: BoxDecoration(
                        color: const Color(0xFF274978),
                        borderRadius: BorderRadius.circular(12)),
                    width: phWidth / (360 / 120),
                    height: phHeight / (800 / 40),
                    child: Center(
                        child: AutoSizeText(
                      '$e2', // total energy ans
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
                top: phHeight / (800 / 45), left: phWidth / (360 / 20)),
            child: SizedBox(
              width: phWidth / (360 / 320),
              height: phHeight / (800 / 58),
              child: const AutoSizeText(
                'Total energy in the universe is alway constant',
                style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 24, 189, 3),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: phHeight / (800 / 30), left: phWidth / (360 / 180)),
            child: ElevatedButton(
                onPressed: () {
                  EnergyMain.anscheck = 'back';
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
                        Color.fromARGB(255, 72, 178, 46))),
                child: const AutoSizeText(
                  'BACK',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
