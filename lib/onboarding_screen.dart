import 'package:flutter/material.dart';
import 'package:frippeji/Product_screen/products_screen.dart';
import 'package:frippeji/screens/screen1.dart';
import 'package:frippeji/screens/screen2.dart';
import 'package:frippeji/screens/screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnboardingScreen  extends StatefulWidget {

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}


class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller =PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              }
              );
              },
            children: [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {_controller.jumpToPage(2);},
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect:  ExpandingDotsEffect(
                    spacing: 5,
                    dotWidth: 20.0,
                    dotHeight:  10.0,
                    dotColor:  Colors.black54,
                    activeDotColor:  Colors.white70,
                  ),
                  onDotClicked:(index)=>_controller.animateToPage(
                    index,
                    duration:const Duration(milliseconds:500),
                    curve:Curves.easeIn,
                  ),
                ),
                SizedBox(height: 10),
                onLastPage
                    ? GestureDetector(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen())),
                      child: Icon(
                        Icons.check,
                        color: Colors.green,
                        size: 30.0,
                      ),
                      )
                    : GestureDetector(

                      onTap: (){
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn
                          );
                          },
                      child: Icon(
                        Icons.arrow_circle_right_rounded,
                        color: Colors.black,
                        size: 30.0,
                      ),
                      ),

              ],
            ),
          ),
        ],
      )
    );
  }
}
