import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Createnumber extends StatefulWidget {
   int number = 0;
   final VoidCallback callback;
   final VoidCallback decreasecall;
   Createnumber({super.key, required this.number, required this.callback, required this.decreasecall, });

  @override
  State<Createnumber> createState() => _CreatenumberState();
}

class _CreatenumberState extends State<Createnumber> {
  // int number = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.4),
                blurRadius: 4,
                offset: Offset(1, 1)
              )
            ]
          ),
          child: IconButton(onPressed:widget.decreasecall, icon: Icon(Icons.remove)),

        ),
         SizedBox(
          width: 20,
        ),
        Text("${widget.number}",style: TextStyle(fontSize: 27),),
         SizedBox(
          width: 20,
        ),
         Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.4),
                blurRadius: 4,
                offset: Offset(1, 1)
              )
            ]
          ),
          child: IconButton(onPressed:widget.callback, icon: Icon(Icons.add)),

        ),
        
      ],
    );
  }
}