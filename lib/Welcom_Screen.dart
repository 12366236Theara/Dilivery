import 'package:flutter/material.dart';
import 'package:food_delivery/RigiTer_SignUp_Sreen/Rigiter.dart';
import 'package:food_delivery/conponent/TextBottom.dart';
import 'package:food_delivery/conponent/titlrpage.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        
        children: [
          SizedBox(
            height: 480,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  child: Image.asset(
                    width: double.infinity,
                    "lib/assets/pageFood.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment(1, .0),
                            colors: [
                          Colors.white,
                          
                          const Color.fromARGB(0, 247, 242, 242).withAlpha(3)
                        ])),
                    height: 500,
                    width: double.infinity,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Titlrpage(title: "Welcome", size: 27),
                Titlrpage(title: "Lorem ipsum dolor Sit amet, consect -", size: 16),
                Titlrpage(title: "etur adipiscing elit. Vivamus et felis ", size: 16),
                Titlrpage(title: "dolor. Dinec vitae facilisis vilit", size: 16),
                
                         
                SizedBox(
                  height: 20,
                ),
                
                Textbottom(
                    text: "Log In",
                    color: Colors.red,
                    colorBoder: Colors.red,
                    colorSty: Colors.white),
                    SizedBox(height: 10,),
                     textbottom(
                    text: "Sign Up",
                    color: Colors.white,
                    colorBoder: Colors.red,
                    colorSty: Colors.red, delinagator: LogUpRigoter(),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
