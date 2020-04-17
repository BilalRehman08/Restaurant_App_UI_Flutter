// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// import 'package:tabb/home/itemdetails.dart';
// import 'items_list.dart';
// class dashboard extends StatefulWidget {
//   @override
//   _dashboardState createState() => _dashboardState();
// }

// class _dashboardState extends State<dashboard> {
//   int _current = 0;

//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider(
      
   
//   //  aspectRatio: 16/9,
//   //  viewportFraction: 0.820,
//    initialPage: 0,
//    enableInfiniteScroll: true,
//    reverse: false,
//    autoPlay: true,
//    autoPlayInterval: Duration(seconds: 3),
//    autoPlayAnimationDuration: Duration(milliseconds: 200),
   
   
   
//    scrollDirection: Axis.horizontal,
//   height: 200.0,
//   items: [1,2,3,4,5].map((i) {
//     return Builder(
//       builder: (BuildContext context) {
//             return Container(
//               width: MediaQuery.of(context).size.width,
//               margin: EdgeInsets.symmetric(horizontal: 5.0),
//               decoration: BoxDecoration(
//                 color: Colors.amber
//               ),
//               child: Text('text $i', style: TextStyle(fontSize: 16.0),)
//             );
//           },
//         );
//       }).toList(),
//     );
//       }
//     }

