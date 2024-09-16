import 'package:flutter/material.dart';
import 'package:food_delivery/Home_Page_Sreen/Home.dart';
import 'package:food_delivery/Welcom_Screen.dart';
import 'package:food_delivery/conponent/Back_Icon/Back_icon.dart';
import 'package:food_delivery/conponent/Back_Icon/Check_Icon.dart';
import 'package:food_delivery/conponent/TextBottom.dart';

import 'package:food_delivery/conponent/Textfield.dart';

class LogUpRigoter extends StatefulWidget {
  const LogUpRigoter({super.key});

  @override
  State<LogUpRigoter> createState() => _LogUpRigoterState();
}

class _LogUpRigoterState extends State<LogUpRigoter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: BackIcon(destination: WelcomScreen()),
        ),
        title: const Text("Sig Up"),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Center(
          child: Column(
            children: [
              Text(
                "Register",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
              Text("Create Your New Account"),
              SizedBox(
                height: 50,
              ),
              textfield(text: "Full Name"),
              SizedBox(
                height: 10,
              ),
              textfield(text: "Email or Phone"),
              SizedBox(
                height: 10,
              ),
              textfield(text: "PassWord"),
              SizedBox(
                height: 10,
              ),
              textfield(text: "Comfirm PassWord"),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CheckIcon(),
                      Text("I agree to your"),
                      Text(
                        " privacy policy ",
                        style: TextStyle(color: Colors.red),
                      ),
                      Text("and")
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "terms & conditions",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              textbottom(
                text: "Sign Up",
                color: Colors.red,
                colorBoder: Colors.red,
                colorSty: Colors.white,
                delinagator: Home(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already an account ,"),
                  Text(
                    "LogIn",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
