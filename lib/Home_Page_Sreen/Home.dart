import 'package:flutter/material.dart';
import 'package:food_delivery/Cart_Page_1/Cart_page_1.dart';
import 'package:food_delivery/Home_Page_Sreen/PAge_Home.dart';
import 'package:food_delivery/Home_Person_Sreen/Person.dart';
import 'package:food_delivery/Notification_Sreeen/Notification.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _SelectedIndex = 0;
  static final List<Widget> _WidgeOpenTion = <Widget>[
    const PageHome(),
    CartPage1(
      image: '',
      title: '',
      subtitle: '',
    ),
    const PageHome(),
    const notification(),
    const Person(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _WidgeOpenTion[_SelectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 20,
                offset: const Offset(6, 0))
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomNavigationBar(
              useLegacyColorScheme: true,
              unselectedItemColor: Colors.amber,
              fixedColor: Colors.blue,
              backgroundColor: Colors.blue,
              currentIndex: _SelectedIndex,
              onTap: (index) {
                setState(() {
                  _SelectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_cart,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.forum_outlined,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    label: ""),
              ]),
        ),
      ),
    );
  }
}
