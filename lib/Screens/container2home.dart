import 'package:flutter/material.dart';
import 'package:food_delivery/Model/listmodel.dart';
import 'package:food_delivery/Screens/itemdetailedscreen.dart';
import 'package:provider/provider.dart';

import '../Fonts/font.dart';
import '../Providerss/indexprovider.dart';

class Container2Home extends StatefulWidget {
  const Container2Home({super.key});

  @override
  State<Container2Home> createState() => _Container2HomeState();
}

class _Container2HomeState extends State<Container2Home> {
  @override
  Widget build(BuildContext context) {
    final indexproo = Provider.of<IndexProvider>(context, listen: true);

    return SizedBox(
      width: double.infinity,
      height: 170,
      child: ListView.builder(
          itemCount: categorylist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return method1(
                context,
                categorylist[indexproo.setIndex].name[index],
                categorylist[indexproo.setIndex].items[index],
                categorylist[indexproo.setIndex].rate[index],
                Image(
                  image:
                      AssetImage(categorylist[indexproo.setIndex].img[index]),
                  width: 80,
                ),
                index);
          }),
    );
  }

  InkWell method1(BuildContext context, String text1, String text2,
      String text3, Image images, int index) {
    final indexproo = Provider.of<IndexProvider>(context, listen: false);

    return InkWell(
      onTap: () {
        
        Navigator.push(context, MaterialPageRoute(builder: (ctx) {
          return DetailScreen(
            name: categorylist[indexproo.setIndex].name[index],
            description: categorylist[indexproo.setIndex].items[index],
            rate: text3,
            imagee: categorylist[indexproo.setIndex].img[index],
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 5, top: 4, bottom: 4),
        child: Container(
          padding: const EdgeInsets.only(bottom: 3, left: 8, right: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 5.0,
                    offset: const Offset(0, 3.0)),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                maxRadius: 38,
                child: images,
              ),
              Text(
                text1,
                style: primarysmall,
              ),
              Text(
                text2,
                style: secondaryText,
              ),
              Text.rich(
                TextSpan(
                    text: "\$",
                    style: secondaryboldornge,
                    children: <InlineSpan>[
                      TextSpan(text: text3, style: primarysmall)
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
