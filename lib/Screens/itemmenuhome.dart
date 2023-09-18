import 'package:flutter/material.dart';
import 'package:food_delivery/Fonts/font.dart';
import 'package:food_delivery/Model/listmodel.dart';
import 'package:food_delivery/Providerss/indexprovider.dart';
import 'package:provider/provider.dart';

var selectedindex = 0;

class ItemMenu extends StatefulWidget {
  const ItemMenu({super.key});

  @override
  State<ItemMenu> createState() => _ItemMenuState();
}

class _ItemMenuState extends State<ItemMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ListView.builder(
          itemCount: itemlist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              child: containermethod(
                  itemlist[index].name,
                  Image(
                    image: AssetImage(itemlist[index].imge),
                    width: 80,
                  ),
                  index),
            );
          }),
    );
  }

  InkWell containermethod(String text, Image image, int intex) {
    final indexproo = Provider.of<IndexProvider>(context);
    return InkWell(
      onTap: () {
        setState(() {
          indexproo.selectedIndex = intex;
          Provider.of<IndexProvider>(context, listen: false).setSelectedIndex();
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 6),
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 8),
          decoration: BoxDecoration(
              color: indexproo.selectedIndex == intex
                  ? highLight
                  : Colors.grey[100],
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: image,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: indexproo.selectedIndex == intex
                    ? secondaryText2
                    : secondaryText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
