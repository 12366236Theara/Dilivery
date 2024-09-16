import 'package:flutter/material.dart';
import 'package:food_delivery/Home_Page_Sreen/Drawer/NavBar_Drawer.dart';
import 'package:food_delivery/Home_Page_Sreen/InconHomePage.dart';
import 'package:food_delivery/Home_Page_Sreen/Tabbar.dart';
import 'package:food_delivery/conponent/Model/Model.dart';

import 'package:food_delivery/conponent/TextFiaeldHomePage/TextFIwldPage.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfffcfcfc),
      drawer: const NavbarDrawer(),
      appBar: AppBar(
        backgroundColor: const Color(0xfffcfcfc),
        leading: Builder(
            builder: (context) => ElevatedButton(
                  iconAlignment: IconAlignment.start,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 3)),
                  child: const Icon(
                    Icons.menu,
                  ),
                )),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              radius: 20,
              foregroundImage: AssetImage("lib/assets/Person1.jpg"),
            ),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              height: 700,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Find Your",
                      style: TextStyle(fontSize: 30, color: Colors.black45),
                    ),
                    const Row(
                      children: [
                        Text(
                          "Best Food ",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        Text(
                          " here",
                          style: TextStyle(fontSize: 30, color: Colors.black45),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: textfiwldpage(
                            trun: false,
                          ),
                        ),
                        SizedBox(
                            height: 30,
                            width: 40,
                            child: Inconhomepage(
                              icon: Icon(Icons.sort),
                              color: Colors.red,
                            ))
                      ],
                    ),
                    Expanded(
                        child: Tabbar(
                      fakemodel: FakeDate(
                          image: "",
                          category: "",
                          mumber: "",
                          price: 2,
                          suptitle: "",
                          title: ""),
                    ))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
