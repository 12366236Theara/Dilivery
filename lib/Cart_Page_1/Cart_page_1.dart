// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:food_delivery/Home_Page_Sreen/Home.dart';
import 'package:food_delivery/conponent/Back_Icon/Back_icon.dart';

class CartPage1 extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  CartPage1({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  static List<CartPage1> cartPageItems = [
    CartPage1(
      image: "lib/assets/Food1.jpg",
      title: "Pizza",
      subtitle: "Delicious Cheese Pizza",
    ),
    CartPage1(
      image: "lib/assets/Food2.jpg",
      title: "Burger",
      subtitle: "Juicy Beef Burger",
    ),
    CartPage1(
      image: "lib/assets/Food3.jpg",
      title: "Burger",
      subtitle: "Juicy Beef Burger",
    ),
    CartPage1(
      image: "lib/assets/Food4.jpg",
      title: "Burger",
      subtitle: "Juicy Beef Burger",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(destination: Home()),
        centerTitle: true,
        title: Text("My Favourites"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
          itemCount: cartPageItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.3),
                      offset: Offset(0, 0),
                      blurRadius: 10,
                    ),
                  ],
                ),
                height: 140,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(cartPageItems[index].image),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            cartPageItems[index].title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            cartPageItems[index].subtitle,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\$20.99",
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star_half_rounded,
                                size: 20,
                                color: Colors.amber,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
