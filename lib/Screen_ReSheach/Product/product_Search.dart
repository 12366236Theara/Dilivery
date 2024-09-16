import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Product_Detail_Page_home/ChangeColor_ICon.dart';
import 'package:food_delivery/Screen_ReSheach/Model_Screen.dart';
import 'package:food_delivery/Screen_ReSheach/Product/CreateNumber.dart';
import 'package:food_delivery/conponent/Back_Icon/Back_icon.dart';

import '../Screen_ReSult.dart';

class ProductSearch extends StatefulWidget {
  const ProductSearch({super.key, required this.focos});
  final Food focos;

  @override
  State<ProductSearch> createState() => _ProductSearchState();
}

class _ProductSearchState extends State<ProductSearch> {
  int quan = 1;
  double calculatePrice(double price, int qty) {
    double total;
    return total = price * qty;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const BackIcon(destination: ScreenResult()),
        actions: const [
          ChangecolorIcon(),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.1),
                          blurRadius: 4,
                          offset: const Offset(0, 0))
                    ]),
                child: CircleAvatar(
                  radius: 130,
                  backgroundImage: AssetImage(widget.focos.image),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Createnumber(
                number: quan,
                callback: () => setState(() {
                  quan++;
                }),
                decreasecall: () {
                  setState(() {
                    if (quan > 1) {
                      quan--;
                    }
                  });
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: 390,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.4),
                          blurRadius: 20,
                          offset: const Offset(1, 1))
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Fast Food"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.focos.title,
                            style: const TextStyle(fontSize: 25),
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 30,
                              ),
                              Text(
                                '3.99',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                          "Good food is not just about taste, and diet is not just about achieving an ideal weight or dress size. Proper nutrition is good for the whole body, and what happens in the gut affects the brain and mental health."),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Delivery  Time ",
                            style: TextStyle(fontSize: 17),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.timer,
                            color: Colors.red,
                          ),
                          Text(" 25 mins")
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text("Total Price"),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ ${calculatePrice(widget.focos.price, quan)}",
                            style: const TextStyle(fontSize: 37),
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
                                        blurRadius: 2,
                                        offset: const Offset(1, 1)),
                                  ]),
                              child: IconButton(
                                  onPressed: () => AwesomeDialog(
                                        headerAnimationLoop: false,
                                        context: context,
                                        dialogType: DialogType.success,
                                        animType: AnimType.topSlide,
                                        showCloseIcon: true,
                                        title: "Thank You",
                                        desc: " for buy me",
                                        btnCancelOnPress: () {},
                                        btnOkOnPress: () {},
                                      ).show(),
                                  icon: const Icon(
                                    Icons.shopping_cart,
                                    size: 30,
                                  )))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
