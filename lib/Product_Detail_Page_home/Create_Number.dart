import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CreateNumber extends StatefulWidget {
  int number = 0;
  final VoidCallback valueBak;
  final VoidCallback valuePus;
  
  
  
  


  
  CreateNumber({super.key,  required this.number, required this.valueBak, required this.valuePus });
  

  @override
  State<CreateNumber> createState() => _CreateNumberState();
}

class _CreateNumberState extends State<CreateNumber> {
  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.4),
                    blurRadius: 4,
                    offset: const Offset(1, 1))
              ]),
          child: IconButton(
              onPressed: widget.valueBak,
              
              icon: const Icon(Icons.remove)),
        ),
        const SizedBox(
          width: 20,
        ),
      
        Text(
          "${widget.number}" ,style: TextStyle(fontSize: 27),
        ),
        const SizedBox(  
          width: 20,
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.4),
                    blurRadius: 4,
                    offset: const Offset(1, 1))
              ]),
          child: IconButton(
              onPressed: widget.valuePus,
              icon: const Icon(Icons.add)),
              
        ),
      ],
    );
  }
}
