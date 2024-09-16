// import 'package:flutter/material.dart';
// import 'package:food_delivery/conponent/Model/Model.dart';

// import 'package:food_delivery/conponent/TextHhomePage.dart';

// class Listview extends StatelessWidget {
//   // final String image;
//   // final String text;
//   // final String title;

//   Listview({
//     super.key,
//     required FakeDate fakemodel;
//     // required this.image,
//     // required this.text,
//     // required this.title,
//   });

//   // static List<Listview> model = [
//   //   Listview(
//   //       image: "lib/assets/Food1.jpg", text: "fast Food", title: "fast food"),
//   //   Listview(
//   //       image: "lib/assets/Food2.jpg", text: "fast Food", title: "fast food"),
//   //   Listview(
//   //       image: "lib/assets/Food3.jpg", text: "fast Food", title: "fast food")
//   // ];


  

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Text("See All"),
//         SizedBox(
//           height: 370,
//           width: double.infinity,
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             itemCount: foodclass.length,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     boxShadow: [
//                       BoxShadow(
//                           color: Colors.black.withOpacity(.4),
//                           blurRadius: 2,
//                           offset: Offset(0, 0))
//                     ],
//                     color: Color(0xffffffff),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   width: 240,
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         CircleAvatar(
//                           radius: 80,
//                           backgroundImage: AssetImage(model[index].image),
//                         ),
//                         Texthhomepage(
//                             title: model[index].title,
//                             size: 24,
//                             color: Colors.black),
//                         Texthhomepage(
//                             title: model[index].text,
//                             size: 17,
//                             color: Color.fromARGB(255, 208, 176, 176)),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Icon(Icons.star_border),
//                             Texthhomepage(
//                                 title: "5.99",
//                                 size: 17,
//                                 color:
//                                     const Color.fromARGB(255, 202, 171, 171)),
//                           ],
//                         ),
//                         Texthhomepage(
//                             title: "\$5.99", size: 30, color: Colors.red),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
