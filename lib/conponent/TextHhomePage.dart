import 'package:flutter/material.dart';

class Texthhomepage extends StatelessWidget {
  const Texthhomepage(
      {super.key,
      required this.title,
      required this.size,
      required this.color});
  final String title;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        title,
        style: TextStyle(color: color, fontSize: size),
      ),
    );
  }
}
