import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Product_Detail_Page_home/product_Detail.dart';
import 'package:food_delivery/Screen_ReSheach/Screen_ReSult.dart';
import 'package:food_delivery/conponent/Model/Model.dart';
import 'package:food_delivery/conponent/TextHhomePage.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key, required FakeDate fakemodel});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with TickerProviderStateMixin {
  late TabController _tabController;

  List<FakeDate> fakedate = [];
  List<FakeDateCate> fakeDateCate = FakeDateCate.tabmodel();
  final List<FakeDate> _allFakeDAtelist = foodclass;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: fakeDateCate.length, vsync: this);
    _tabController.addListener(
      () {
        filter(_tabController.index);
      },
    );
    filter(0);
  }

  void filter(int index) {
    final cate = fakeDateCate[index];
    final mplist = _allFakeDAtelist.where(
      (food) => food.category == cate.text,
    );

    setState(() {
      fakedate.clear();
      fakedate.addAll(mplist);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: fakeDateCate.length,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: ButtonsTabBar(
                buttonMargin: const EdgeInsets.only(right: 30),
                controller: _tabController,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                // center: true,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.6),
                          blurRadius: 2,
                          offset: const Offset(0, 0))
                    ]),

                // unselectedBackgroundColor: Color(0xfff2efff),
                tabs: const [
                  Tab(
                    icon: Icon(Icons.food_bank_sharp),
                    text: "Fast Food",
                  ),
                  Tab(
                    icon: Icon(Icons.local_drink_rounded),
                    text: "drink",
                  ),
                  Tab(
                    icon: Icon(Icons.icecream),
                    text: "Icecream",
                  ),
                  Tab(
                    icon: Icon(Icons.food_bank),
                    text: "Food Sea",
                  ),
                ]),
          ),
          body:
              TabBarView(dragStartBehavior: DragStartBehavior.start, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ScreenResult(),));
                  },
                  child: Text("See All"),

                ),
                SizedBox(
                  height: 410,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: fakedate.length,
                    itemBuilder: (context, index) {
                      final model = fakedate[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.4),
                                  blurRadius: 2,
                                  offset: const Offset(0, 0))
                            ],
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          width: 240,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 1),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductDetail(
                                        userpet: fakedate[index],
                                      ),
                                    ));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 80,
                                    backgroundImage: AssetImage(model.image!),
                                  ),
                                  Texthhomepage(
                                      title: model.title!,
                                      size: 24,
                                      color: Colors.black),
                                  Texthhomepage(
                                      title: model.title!,
                                      size: 17,
                                      color: const Color.fromARGB(
                                          255, 208, 176, 176)),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Texthhomepage(
                                          title: "5.99",
                                          size: 17,
                                          color: Color.fromARGB(
                                              255, 202, 171, 171)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "\$",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.red),
                                      ),
                                      Texthhomepage(
                                          title: "${model.price}",
                                          size: 30,
                                          color: Colors.red),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            //  ListviewDrink(image: "",text: "", title: "",),
            //  ListviewIcecream(
            //   image: "",
            //   text: "",
            //   title: "",
            // )
            // ,ListviewSea(image: "",text: "", title: "",),
          ]),
        ));
  }
}
