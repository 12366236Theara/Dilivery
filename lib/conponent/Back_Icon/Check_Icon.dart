import 'package:flutter/material.dart';

class CheckIcon extends StatefulWidget {
  const CheckIcon({super.key});

  @override
  State<CheckIcon> createState() => _CheckIconState();
}

class _CheckIconState extends State<CheckIcon> {
  @override
  Widget build(BuildContext context) {
    Color _iconcolor = const Color.fromARGB(255, 231, 5, 5);
    void _toColor() {
    setState(() {
      _iconcolor = _iconcolor == Colors.white ? Colors.red : Colors.white;
    });
    }
    return GestureDetector(
      onTap: _toColor,
      child:Icon(Icons.check_box_outlined,color: _iconcolor,)
    );
  }
}