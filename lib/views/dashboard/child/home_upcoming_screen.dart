import 'package:flutter/material.dart';

class HomeUpcomingScreen extends StatefulWidget{
  const HomeUpcomingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeUpcomingScreen();

}

class _HomeUpcomingScreen extends State<HomeUpcomingScreen>{

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("HomeUpcomingScreen"),
      ),
    );
  }

}