import 'package:flutter/material.dart';
import 'package:food_delivery/Fonts/font.dart';
import 'package:food_delivery/Screens/itemdetailed1.dart';

import 'first_screen.dart';

class DetailScreen extends StatefulWidget {
  final name;
  final description;
  final rate;
  final imagee;
  const DetailScreen(
      {super.key,
      required this.name,
      required this.description,
      required this.rate,
      required this.imagee});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int text = 0;
  @override
  Widget build(BuildContext context) {
    void incrementfun() {
      setState(() {
        text++;
      });
    }

    void decrementfun() {
      if (text < 1) {
        return;
      } else {
        setState(() {
          text--;
        });
      }
    }

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image(
              image: AssetImage('assets/bgX.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 3 / 4,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(widget.imagee),
                  width: 150,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  width: 120,
                  decoration: BoxDecoration(
                      color: highLight,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: decrementfun,
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                        Text(
                          '$text',
                          style: primarywhite,
                        ),
                        IconButton(
                            onPressed: incrementfun,
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row1(t1: widget.name, t2: widget.description, t3: widget.rate),
                const SizedBox(
                  height: 5,
                ),
                const Row2(),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Juicy, big, loaded with toppings of my choice.High quality beef medium to well with cheese and bacon on a multigrain bun.A huge single or triple burger with all the fixings, cheese, lettuce, tomato, onions and special sauce or mayonnaise",
                  style: secondaryText,
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                ),
                buttonmethod(context, "Add to Cart"),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
