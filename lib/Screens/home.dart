import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Fonts/font.dart';
import 'package:food_delivery/Screens/container1home.dart';
import 'package:food_delivery/Screens/container2home.dart';
import 'package:food_delivery/Screens/itemmenuhome.dart';
import 'package:food_delivery/Screens/row1home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            height: 50,
            onTap: (value) {},
            backgroundColor: Colors.white,
            animationDuration: const Duration(milliseconds: 300),
            color: highLight,
            items: const [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ]),
        body: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row1Home(),
                const ContainerScreen(),
                Text(
                  'Categories',
                  textAlign: TextAlign.start,
                  style: secondarybold,
                ),
                const ItemMenu(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Now',
                      style: secondarybold,
                    ),
                    Row(
                      children: [
                        Text(
                          'View All',
                          style: yellowtxt,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                            padding: const EdgeInsets.only(
                                left: 3, right: 3, top: 3, bottom: 3),
                            decoration: BoxDecoration(
                                color: Colors.yellow[700],
                                borderRadius: BorderRadius.circular(5)),
                            child: const Icon(
                              Icons.arrow_right,
                              color: Colors.white,
                            ))
                      ],
                    )
                  ],
                ),
                const Container2Home(),
                const SizedBox(
                  height: 10,
                )
              ],
            )),
      ),
    );
  }
}
