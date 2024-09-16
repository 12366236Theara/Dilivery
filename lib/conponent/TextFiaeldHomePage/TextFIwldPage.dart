import 'package:flutter/material.dart';
import 'package:food_delivery/Home_Page_Sreen/Home.dart';
import 'package:food_delivery/Home_Page_Sreen/InconHomePage.dart';
import 'package:food_delivery/Screen_ReSheach/Screen_ReSult.dart';

class Textfiwldpage extends StatelessWidget {
  const Textfiwldpage({super.key, required this.trun});
  final bool trun;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
            },
            child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.4),
                        offset: Offset(0, 0),
                        blurRadius: 1,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfff5f3f6)),
                child: TextField(
                    autofocus: trun,
                    cursorHeight: 15,
                    decoration: InputDecoration(
                        labelText: "Shearch  Food...",
                        icon: Icon(Icons.search),
                        border: InputBorder.none
                        //   ),
                        // ),
                        ))),
          ),
        ),
        SizedBox(
            height: 40,
            width: 40,
            child: Inconhomepage(
              icon: Icon(Icons.sort),
              color: Colors.red,
            ))
      ],
    );
  }
}

class textfiwldpage extends StatelessWidget {
  const textfiwldpage({super.key, required this.trun});
  final bool trun;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenResult(),
            ));
      },
      child: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfff5f3f6)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Text("Shearch Food"),
              ],
            ),
          )),
    );
  }
}
