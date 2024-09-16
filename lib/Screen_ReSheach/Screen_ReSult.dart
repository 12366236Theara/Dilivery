import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_delivery/Home_Page_Sreen/Home.dart';
import 'package:food_delivery/Home_Page_Sreen/InconHomePage.dart';
import 'package:food_delivery/Screen_ReSheach/Model_Screen.dart';
import 'package:food_delivery/Screen_ReSheach/Product/product_Search.dart';

class ScreenResult extends StatefulWidget {
  const ScreenResult({super.key});

  @override
  State<ScreenResult> createState() => _ScreenResultState();
}

class _ScreenResultState extends State<ScreenResult> {
  final controller = TextEditingController();
  List<Food> foods = allFood;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          decoration: const InputDecoration(
            border: InputBorder.none,
            labelText: "Search Here",
          ),
          controller: controller,
          onChanged: searchFood,
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            FocusScope.of(context).unfocus();
            Future.delayed(const Duration(milliseconds: 100), () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Home(),
                  ));
            });
          },
          child: const Inconhomepage(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, ),
        child: Expanded(
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20, // Adjusted spacing
            itemBuilder: (context, index) {
              final newFoods = foods[index];
              return Container(
                  height: 200,
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    top: index % 2 == 0 ? 20 : 0,
                    bottom: index % 2 == 0 ? 0 : 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          blurRadius: 2,
                          offset: const Offset(1, 0))
                    ],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: InkWell(
                    focusNode: FocusNode(),

                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductSearch(focos: foods[index],),));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 75,
                          foregroundImage: AssetImage(newFoods.image),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          newFoods.title,
                          style: const TextStyle(fontSize: 23),
                        ),
                        const Text("Fist Food"),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,color: Colors.amber,
                              size: 17,
                            ),
                            Text(" 3.99")
                          ],
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                            Text("\$",style: TextStyle(fontSize: 16,color: Colors.red),),
                             Text(
                              " ${newFoods.price}",
                              style: TextStyle(fontSize: 30),
                                                     ),
                           ],
                         )
                      ],
                    ),
                  ));
            },
            staggeredTileBuilder: (index) {
              return const StaggeredTile.count(1, 1.8);
            },
            itemCount: foods.length,
          ),
        ),
      ),
    );
  }

  void searchFood(String query) {
    final suggestion = allFood.where((food) {
      final foodTitle = food.title.toLowerCase();
      final input = query.toLowerCase();
      return foodTitle.contains(input);
    }).toList();

    setState(() => foods = suggestion);
  }
}
