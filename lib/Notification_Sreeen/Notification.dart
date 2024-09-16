import 'package:flutter/material.dart';
import 'package:food_delivery/Home_Page_Sreen/Home.dart';
import 'package:food_delivery/Home_Person_Sreen/My_Oders.dart';
import 'package:food_delivery/conponent/Back_Icon/Back_icon.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _NotificationState();
}

class _NotificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Noticaton",style: TextStyle(fontSize: 20),),
        leading: BackIcon(destination: Home()),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("New",style: TextStyle(fontSize: 20),)
            ,MyOders(title: "Hello You Wordcome ", heigth: 60)
            ,MyOders(title: "Hello You Wordcome ", heigth: 60)
            ,MyOders(title: "Hello You Wordcome ", heigth: 60),
          ],
        ),
      ),
    );
  }
}