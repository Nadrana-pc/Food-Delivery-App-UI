import 'package:flutter/material.dart';

import '../Fonts/font.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 130,
        decoration: BoxDecoration(
            color: Colors.orange[100], borderRadius: BorderRadius.circular(10)),
        width: double.infinity,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            children: [
              Text(
                'The Fastest in',
                style: primarysmall,
              ),
              Text.rich(
                TextSpan(
                    text: "Delivery ",
                    style: primarysmall,
                    children: <InlineSpan>[
                      TextSpan(text: 'Food', style: primary2small)
                    ]),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(highLight)),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    //   return const HomeScreen();
                    // })
                    // );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 6, right: 6, top: 3, bottom: 3),
                    child: Text(
                      'Order Now',
                      style: primarybutton,
                    ),
                  )),
            ],
          ),
          const Image(
            image: AssetImage(
              'assets/dlvry.png',
            ),
            height: 190,
          )
        ]),
      ),
    );
  }
}
