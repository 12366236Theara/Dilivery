import 'package:flutter/material.dart';

class ItemDrawer extends StatelessWidget {
  const ItemDrawer({super.key, required this.icon, required this.title, required this.color, required this.panding});

  final Icon icon;
  final String title;
  final Color color;
  final double panding;

   

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 
      20,vertical: panding),
      child: Row(children: [
        icon,
        SizedBox(width: 20,),
        Text(title,style: TextStyle(color: color),)
        
      
        
      ],),
    );
  }
}