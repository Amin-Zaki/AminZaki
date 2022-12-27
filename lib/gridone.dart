import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class GridOne extends StatefulWidget {
  const GridOne({super.key});

  @override
  State<GridOne> createState() => _GridOneState();
}

class _GridOneState extends State<GridOne> {
  final _controller = ValueNotifier<bool>(false);
  final _controller1 = ValueNotifier<bool>(false);
  final _controller2 = ValueNotifier<bool>(false);
  final _controller3 = ValueNotifier<bool>(false);
  bool _checked = false;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {
        if (_controller.value) {
          _checked = true;
        } else {
          _checked = false;
        }
      });
    });
  }

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
                    AdvancedSwitch(
                      controller: _controller,
                      activeColor: Colors.deepPurpleAccent,
                      inactiveColor: Colors.grey,
                      activeChild: const Text('ON'),
                      inactiveChild: const Text('OFF'),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      width: 50.0,
                      height: 20.0,
                      enabled: true,
                      disabledOpacity: 0.5,
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
                      Icons.fax_outlined,
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
                    AdvancedSwitch(
                      controller: _controller1,
                      activeColor: Colors.deepPurpleAccent,
                      inactiveColor: Colors.grey,
                      activeChild: const Text('ON'),
                      inactiveChild: Text('OFF'),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      width: 50.0,
                      height: 20.0,
                      enabled: true,
                      disabledOpacity: 0.5,
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
                      Icons.approval,
                    ),
                    Text(
                      "Room 3",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            letterSpacing: .5,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    AdvancedSwitch(
                      controller: _controller2,
                      activeColor: Colors.deepPurpleAccent,
                      inactiveColor: Colors.grey,
                      activeChild: const Text('ON'),
                      inactiveChild: Text('OFF'),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      width: 50.0,
                      height: 20.0,
                      enabled: true,
                      disabledOpacity: 0.5,
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
                      Icons.psychology_sharp,
                    ),
                    Text(
                      "Room 4",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            letterSpacing: .5,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    AdvancedSwitch(
                      controller: _controller3,
                      activeColor: Colors.deepPurpleAccent,
                      inactiveColor: Colors.grey,
                      activeChild: const Text('ON'),
                      inactiveChild: Text('OFF'),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      width: 50.0,
                      height: 20.0,
                      enabled: true,
                      disabledOpacity: 0.5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
