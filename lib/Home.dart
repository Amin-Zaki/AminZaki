import 'package:flutter/material.dart';
import 'gridone.dart' as grideone;
import 'gridetwo.dart' as gridtwo;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid View"),
          backgroundColor: Colors.indigo,
          bottom: TabBar(
            controller: controller,
            indicatorWeight: 5.0,
            indicatorColor: Colors.deepPurpleAccent,
            tabs: const [
              Tab(
                icon: Icon(Icons.home_filled),
                text: "All",
              ),
              Tab(
                icon: Icon(Icons.room_preferences),
                text: "Living Room",
              ),
            ],
          ),
        ),
        body: TabBarView(
            controller: controller,
            children: const <Widget>[grideone.GridOne(), gridtwo.GrideTwo()]));
  }
}
