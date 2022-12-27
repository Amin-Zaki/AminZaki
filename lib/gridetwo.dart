import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class GrideTwo extends StatefulWidget {
  const GrideTwo({super.key});

  @override
  State<GrideTwo> createState() => _GrideTwoState();
}

class _GrideTwoState extends State<GrideTwo> {
  int value = 0;
  bool positive = false;
  bool positive1 = false;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          child: Card(
            elevation: 10.0,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.home_work_rounded,
                  ),
                  Text(
                    "Room 1",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          letterSpacing: .5,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  AnimatedToggleSwitch<bool>.dual(
                    current: positive,
                    first: false,
                    second: true,
                    dif: 50.0,
                    borderColor: Colors.transparent,
                    borderWidth: 5.0,
                    height: 35,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 0.5),
                      ),
                    ],
                    onChanged: (b) {
                      setState(() => positive = b);
                      return Future.delayed(Duration(seconds: 1));
                    },
                    colorBuilder: (b) =>
                        b ? Colors.grey : Colors.deepPurpleAccent,
                    iconBuilder: (value) => value
                        ? Icon(Icons.arrow_back_ios_new_rounded)
                        : Icon(Icons.arrow_forward_ios_rounded),
                    textBuilder: (value) => value
                        ? Center(child: Text('Off'))
                        : Center(child: Text('On :)')),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Airconditioner',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.home_work_rounded,
                  ),
                  Text(
                    "Room 2",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          letterSpacing: .5,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  AnimatedToggleSwitch<bool>.dual(
                    current: positive1,
                    first: false,
                    second: true,
                    dif: 50.0,
                    borderColor: Colors.transparent,
                    borderWidth: 5.0,
                    height: 35,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 0.5),
                      ),
                    ],
                    onChanged: (b) {
                      setState(() => positive1 = b);
                      return Future.delayed(Duration(seconds: 1));
                    },
                    colorBuilder: (b) =>
                        b ? Colors.grey : Colors.deepPurpleAccent,
                    iconBuilder: (value) => value
                        ? Icon(Icons.arrow_back_ios_new_rounded)
                        : Icon(Icons.arrow_forward_ios_rounded),
                    textBuilder: (value) => value
                        ? Center(child: Text('Off'))
                        : Center(child: Text('On :)')),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Heater',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
