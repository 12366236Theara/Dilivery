import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Home_Page_Sreen/Home.dart';
import 'package:food_delivery/Product_Detail_Page_home/ChangeColor_ICon.dart';
import 'package:food_delivery/Product_Detail_Page_home/Create_Number.dart';
import 'package:food_delivery/conponent/Back_Icon/Back_icon.dart';
import 'package:food_delivery/conponent/Model/Model.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key, required this.userpet});
  final FakeDate userpet;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int pum = 1;
  double calculatePrice(
    double price,
    int dty,
  ) {
    double total;
    total = price * dty;
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIcon(destination: Home()),
        actions: const [
          ChangecolorIcon(),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage(widget.userpet.image ?? ""),
              ),
              const SizedBox(
                height: 40,
              ),
              CreateNumber(
                valuePus: () => setState(() {
                  pum++;
                }),
                number: pum,
                valueBak: () {
                  setState(() {
                    if (pum > 1) {
                      pum--;
                    }
                  });
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: 400,
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
                            widget.userpet.title ?? "",
                            style: const TextStyle(fontSize: 25),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 30,
                              ),
                              Text(
                                widget.userpet.mumber ?? "",
                                style: const TextStyle(fontSize: 20),
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
                        height: 20,
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
                            "\$ ${calculatePrice(widget.userpet.price, pum)}",
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
