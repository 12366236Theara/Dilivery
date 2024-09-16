import 'package:flutter/material.dart';
import 'package:food_delivery/Welcom_Screen.dart';

class Slashscreenpage extends StatefulWidget {
  const Slashscreenpage({super.key});

  @override
  State<Slashscreenpage> createState() => _SlashscreenpageState();
}

class _SlashscreenpageState extends State<Slashscreenpage> {
  @override
  void initState() {
    super.initState();
    _navigetorbutom();
  }

  _navigetorbutom() async {
    await Future.delayed(Duration(seconds: 2), () {
      
    });
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Container(
            child: Text(
              "Foodie",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ));
  }
}
