import 'package:flutter/material.dart';

class Inconhomepage extends StatelessWidget {
  const Inconhomepage({super.key, required this.icon, required this.color});
  final Icon icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: color,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 0,
                offset: Offset(0.1, 0.1),
              )
            ]),
        child: Center(
          // Center the icon inside the container
          child: icon, // Use the passed icon
        ));
  }
}
