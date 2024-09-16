import 'package:flutter/material.dart';

class MyOders extends StatelessWidget {
  const MyOders({super.key, required this.title, required this.heigth});
final String title;
final double heigth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        // height: 63,
        height: 
        heigth,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            blurRadius: 24,
            offset: Offset(0, 0)
          )
        ]
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 16),
          child: Text(title,style: TextStyle(fontSize: 18
          ),),
        ),
      
      ),
    );
  }
}