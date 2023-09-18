// import 'package:flutter/material.dart';
// import 'package:food_delivery/Screens/demo1.dart';

// class Demo extends StatefulWidget {
//   const Demo({super.key});

//   @override
//   State<Demo> createState() => _DemoState();
// }

// class _DemoState extends State<Demo> {
//   var selectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//                 itemCount: categorylist.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedIndex = index;
//                       });
//                     },
//                     child: ListTile(
//                       title: Text(
//                         categorylist[index].name,
//                         style: TextStyle(
//                             color: selectedIndex == index
//                                 ? Colors.orange
//                                 : Colors.blue),
//                       ),
//                     ),
//                   );
//                 }),
//           ),
//           Divider(thickness: 2),
//           Expanded(
//             flex: 2,
//             child: ListView.builder(
//                 itemCount: categorylist[selectedIndex].items.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(
//                       categorylist[selectedIndex].items[index],
//                     ),
//                   );
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }
