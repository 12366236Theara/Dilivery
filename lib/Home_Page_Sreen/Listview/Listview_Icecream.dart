import 'package:flutter/material.dart';

import 'package:food_delivery/conponent/TextHhomePage.dart';

class ListviewIcecream extends StatelessWidget {
  final String image;
  final String text;
  final String title;

  ListviewIcecream({
    super.key,
    required this.image,
    required this.text,
    required this.title,
  });

  static List<ListviewIcecream> model = [
    ListviewIcecream(
        image: "lib/assets/Icecream1.jpg", text: "Ice Cream", title: "Ice Cream"),
   ListviewIcecream(
        image: "lib/assets/Icecream2.jpg", text: "Ice Cream", title: "Ice Cream"),
        ListviewIcecream(
        image: "lib/assets/Icecream3.jpg", text: "Ice Cream", title: "Ice Cream"),
        ListviewIcecream(
        image: "lib/assets/Icecream4.jpg", text: "Ice Cream", title: "Ice Cream"),
        ListviewIcecream(
        image: "lib/assets/Icecream5.jpg", text: "Ice Cream", title: "Ice Cream"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("See All"),
        SizedBox(
          height: 370,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: model.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.4),
                          blurRadius: 2,
                          offset: Offset(0, 0))
                    ],
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 240,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage(model[index].image),
                        ),
                        Texthhomepage(
                            title: model[index].title,
                            size: 24,
                            color: Colors.black),
                        Texthhomepage(
                            title: model[index].text,
                            size: 17,
                            color: Color.fromARGB(255, 208, 176, 176)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star_border),
                            Texthhomepage(
                                title: "5.99",
                                size: 17,
                                color:
                                    const Color.fromARGB(255, 202, 171, 171)),
                          ],
                        ),
                        Texthhomepage(
                            title: "\$5.99", size: 30, color: Colors.red),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
