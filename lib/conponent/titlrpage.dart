

import 'package:flutter/material.dart';

class Titlrpage extends StatelessWidget {
  
  const Titlrpage({super.key,required this. title ,required this.size});
  
   final String title;
   final double size;
  

  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(fontSize:size));
    
  }
}