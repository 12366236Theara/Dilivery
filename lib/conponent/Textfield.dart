import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffe1e1e1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: text,
          ),
        ),
      ),
    );
  }
}
