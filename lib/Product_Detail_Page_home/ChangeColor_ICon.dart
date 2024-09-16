import 'package:flutter/material.dart';

class ChangecolorIcon extends StatefulWidget {
  const ChangecolorIcon({super.key, });

  

  @override
  State<ChangecolorIcon> createState() => _ChangecolorIconState();
  

  
  
}

class _ChangecolorIconState extends State<ChangecolorIcon> {
  
  Color _color =Colors.blueAccent;
  void _toColor(){
    setState(() {
      _color = _color ==Colors.blueAccent? Colors.red : Colors.blueAccent;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: GestureDetector(
        
        onTap: _toColor,
        child: Icon(Icons.favorite,
        size: 30,
        color: _color,
        
        ),
      
      ),
    );
  }
}