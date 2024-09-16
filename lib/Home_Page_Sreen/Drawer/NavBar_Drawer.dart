import 'package:flutter/material.dart';
import 'package:food_delivery/Home_Page_Sreen/Drawer/Item_Drawer.dart';

class NavbarDrawer extends StatelessWidget {
  const NavbarDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.red,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      foregroundImage: AssetImage(
                        "lib/assets/Person1.jpg",
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My ,OGVaDAra",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          "ADmin2999@gmail.com",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text("+855 : 999 168 168",
                            style: TextStyle(color: Colors.grey))
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: const ItemDrawer(
                    icon: Icon(
                      Icons.home,
                      color: Colors.red,
                    ),
                    title: 'Home',
                    color: Colors.red,
                    panding: 0,
                  ),
                ),
                const ItemDrawer(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: 'My profile',
                  color: Colors.white,
                  panding: 13,
                ),
                const ItemDrawer(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  title: 'My Favourities ',
                  color: Colors.white,
                  panding: 13,
                ),
                const ItemDrawer(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  title: 'Cart',
                  color: Colors.white,
                  panding: 13,
                ),
                const ItemDrawer(
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  title: 'Notification',
                  color: Colors.white,
                  panding: 13,
                ),
                const ItemDrawer(
                  icon: Icon(
                    Icons.card_membership_sharp,
                    color: Colors.white,
                  ),
                  title: 'My Cards',
                  color: Colors.white,
                  panding: 13,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 40,
                ),
                const ItemDrawer(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: 'Settings',
                  color: Colors.white,
                  panding: 13,
                ),
                const ItemDrawer(
                  icon: Icon(
                    Icons.error,
                    color: Colors.white,
                  ),
                  title: 'About us',
                  color: Colors.white,
                  panding: 13,
                ),
                const ItemDrawer(
                  icon: Icon(
                    Icons.badge,
                    color: Colors.white,
                  ),
                  title: 'Privacy policy',
                  color: Colors.white,
                  panding: 13,
                ),
                const ItemDrawer(
                  icon: Icon(
                    Icons.assignment,
                    color: Colors.white,
                  ),
                  title: 'Terms & conditions',
                  color: Colors.white,
                  panding: 13,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20,
                ),
                const ItemDrawer(
                  icon: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: 'Log Out',
                  color: Colors.white,
                  panding: 13,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ));
  }
}

// Text("ADmin2999@gmail.com"),
// Text("+855 : 999 168 168")
