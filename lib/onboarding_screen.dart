import 'package:dope_introduction_screen/intro_screens/intro_page_1.dart';
import 'package:dope_introduction_screen/intro_screens/intro_page_2.dart';
import 'package:dope_introduction_screen/intro_screens/intro_page_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_page.dart';

class OnBoarding_screen extends StatefulWidget {
  const OnBoarding_screen({Key? key}) : super(key: key);

  @override
  _OnBoarding_screenState createState() => _OnBoarding_screenState();
}

class _OnBoarding_screenState extends State<OnBoarding_screen> {
  PageController _controller = PageController();
  bool onLastPage = false ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          controller: _controller,
          children: [
            Page_one(),
            Page_Two(),
            Page_Three(),
          ],
        ),
        Container(
          alignment: Alignment(0, 0.75),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              onLastPage ?
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  },
                  ),
                  );
                },
                child: const Text("Done"),)
            : GestureDetector(
                onTap: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                },
                child: const Text("Next"),

              ),
              SmoothPageIndicator(controller: _controller, count: 3),
              GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(0);
                  },
                  child: const Text("Skip"),),
            ],
          ),
        ),
      ],
    ));
  }
}
