import 'package:flutter/material.dart';
import 'package:food_delivery/Fonts/font.dart';

class Row1 extends StatelessWidget {
  final t1;
  final t2;
  final t3;
  const Row1({
    super.key,
    required this.t1,
    required this.t2,
    required this.t3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              t1,
              style: primary,
            ),
            Text(
              t2,
              
              style: secondaryText,
              
            ),
          ],
        ),
        Text.rich(TextSpan(
            text: "\$",
            style: secondaryboldornge,
            children: <InlineSpan>[TextSpan(text: t3, style: primary)]))
      ],
    );
  }
}

class Row2 extends StatelessWidget {
  const Row2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        rowmethod(Icons.star, Colors.yellow, "4.5"),
        rowmethod(Icons.fireplace, highLight, "150 Kcal"),
        rowmethod(Icons.punch_clock, Colors.red, "5-10 Min")
      ],
    );
  }

  Row rowmethod(IconData icon, Color clr, String txt) {
    return Row(
      children: [
        Icon(
          icon,
          color: clr,
        ),
        Text(
          txt,
          style: secondarybold,
        )
      ],
    );
  }
}
