import 'package:flutter/material.dart';

import '../Fonts/font.dart';

class Row1Home extends StatelessWidget {
  const Row1Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(5)),
          width: 30,
          height: 30,
          child: const Image(
            image: AssetImage('assets/menu.png'),
          ),
        ),
        Container(
          padding:
              const EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 8),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: highLight,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'California ,US',
                style: secondarybold,
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: highLight,
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(5)),
          width: 30,
          height: 30,
          child: Icon(
            Icons.person_2,
            color: highLight,
          ),
        ),
      ],
    );
  }
}
