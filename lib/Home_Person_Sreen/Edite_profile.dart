import 'package:flutter/material.dart';

class EditeProfile extends StatelessWidget {
  const EditeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container( 
        alignment: Alignment.center,
        width: 120,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(10)),
        child: TextButton(onPressed: () {}, child: const Text("Edite Profile")),
      ),
    );
  }
}
