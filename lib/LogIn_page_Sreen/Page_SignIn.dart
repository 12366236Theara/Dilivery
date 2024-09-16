import 'package:flutter/material.dart';
import 'package:food_delivery/Home_Page_Sreen/Home.dart';
import 'package:food_delivery/Welcom_Screen.dart';
import 'package:food_delivery/conponent/Back_Icon/Back_icon.dart';
import 'package:food_delivery/conponent/Textfield.dart';

class PageSignin extends StatelessWidget {
  const PageSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
         child: BackIcon(destination: WelcomScreen()),
        ),
        title: Text("Log In"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
              Text(
                "Log In to yoour account",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 50,
              ),
              textfield(text: "Email or Phone"),
              SizedBox(
                height: 10,
              ),
              textfield(text: "PassWord"),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot PassWord ?",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
              SizedBox(
                height: 57,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ));
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ,"  ),
                  Text("Sign Up",style: TextStyle(color: Colors.red),)
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
