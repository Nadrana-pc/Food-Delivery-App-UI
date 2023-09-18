import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SwipeablePages extends StatelessWidget {
  final PageController _controller = PageController();
  final int _numPages = 3; // Number of pages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              children: [
                PageView.builder(
                  controller: _controller,
                  itemCount: _numPages,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.blueAccent,
                      child: Center(
                        child: Text(
                          "Page ${index + 1}",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ),
                    );
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: _numPages,
                        effect: SlideEffect(
                          dotColor: Colors.yellow, // Inactive dot color
                          activeDotColor: Colors.white, // Active dot color
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
