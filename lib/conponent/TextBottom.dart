import 'package:flutter/material.dart';
import 'package:food_delivery/LogIn_page_Sreen/Page_SignIn.dart';


class Textbottom extends StatelessWidget {
  const Textbottom({super.key, required this.text,required this.color,required this.colorBoder,required this.colorSty});
  final String text;
  final Color color;
  final Color colorBoder;
  final Color colorSty;
 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: Border.all(color: colorBoder)
      ),
      child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PageSignin(),));
          },
          child: Text(text,
          
            style: TextStyle(color: colorSty),
          )),
    );
  }
}
class textbottom extends StatelessWidget {
  const textbottom({super.key,required this.text,required this.colorSty,required this.color,required this.colorBoder, required this.delinagator});
    final String text;
  final Color color;
  final Color colorBoder;
  final Color colorSty;
  final Widget delinagator;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        border: Border.all(color: colorBoder)
      ),
      child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => delinagator,));
          },
          child: Text(text,
          
            style: TextStyle(color: colorSty),
          )),
    );
  }
}

