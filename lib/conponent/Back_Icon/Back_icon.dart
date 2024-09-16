import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key, required this.destination });
  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return   Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 0),
                  blurRadius: 0.0,
                  spreadRadius: 0,
                )
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => destination,
                      ));
                },
                icon: Icon(Icons.arrow_back_ios)),
          );
  }
}