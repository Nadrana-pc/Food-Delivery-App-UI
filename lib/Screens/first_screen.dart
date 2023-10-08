import 'package:flutter/material.dart';
import 'package:food_delivery/Fonts/font.dart';
import 'package:food_delivery/Screens/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    String t = "Food";
    List<String> list = [
      'Our job is to fill your tummy with delicious food and fast delivery',
      'All happiness depends on a leisurely breakfast',
      'People who love to eat are always the best explorers'
    ];

    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Image(
              fit: BoxFit.fitHeight,
              image: const AssetImage('assets/bg.png'),
              height: double.infinity,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 22, right: 22),
              height: MediaQuery.of(context).size.height / 2,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.elliptical(180, 110))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'The Fastest in',
                    style: primary,
                  ),
                  Text.rich(
                    TextSpan(
                        text: "Delivery ",
                        style: primary,
                        children: <InlineSpan>[
                          TextSpan(text: t, style: primary2)
                        ]),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    height: 70,
                    child: PageView.builder(
                      controller: _controller,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: double.infinity,
                          child: Text(
                            list[index],
                            style: secondaryText,
                            maxLines: 2,
                            textAlign: TextAlign.justify,
                          ),
                        );
                      },
                    ),
                  ),
                  Column(
                    children: [
                      SmoothPageIndicator(
                        controller: _controller,
                        count: list.length,
                        effect: CustomizableEffect(
                            activeDotDecoration: DotDecoration(
                                width: 8, height: 8, color: highLight),
                            dotDecoration: const DotDecoration(
                              color: Color.fromARGB(96, 172, 169, 169),
                              width: 8,
                              height: 8,
                            )
                            // Active dot color
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buttonmethod(context, 'Get Started'),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

ElevatedButton buttonmethod(BuildContext context, String btnTxt) {
  return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(highLight)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) {
          return const HomeScreen();
        }));
      },
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 13, bottom: 13),
        child: Text(
          btnTxt,
          style: primarybutton,
        ),
      ));
}
