import 'package:flutter/material.dart';
import 'package:food_delivery/Home_Page_Sreen/Home.dart';
import 'package:food_delivery/Home_Person_Sreen/Edite_profile.dart';
import 'package:food_delivery/Home_Person_Sreen/My_Oders.dart';
import 'package:food_delivery/conponent/Back_Icon/Back_icon.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Profile"),
        leading: BackIcon(
          destination: Home(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: 700,
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                colors: <Color>[
                              Colors.black,
                              Colors.amber,
                              Colors.blue
                            ])),
                      ),
                      Positioned(
                        bottom: 10,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white, width: 10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.5),
                                    blurRadius: 28,
                                    offset: Offset(0, 0))
                              ],
                              image: DecorationImage(
                                  image: AssetImage("lib/assets/Person1.jpg"))),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "My ,OG VaDara",
                  style: TextStyle(fontSize: 23),
                ),
                Text(
                  "Admin2999@gmail.com",
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ),
                Text(
                  "+855 : 999 168 168",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                EditeProfile(),
                MyOders(
                  title: 'My Oders', heigth: 63,
                ),
                MyOders(
                  title: 'My Addresses', heigth: 63,
                ),
                MyOders(
                  title: 'My Favourites', heigth: 63,
                ),
                MyOders(
                  title: 'Counpons', heigth: 63,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
