import 'package:flutter/material.dart';
import 'package:productive/core/colors.dart';
import 'package:productive/intro/onboard/second_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'components/gesture_detector.dart';
import 'first_screen.dart';

class OnboardMainScreen extends StatefulWidget {
  const OnboardMainScreen({Key? key}) : super(key: key);

  @override
  State<OnboardMainScreen> createState() => _OnboardMainScreenState();
}

class _OnboardMainScreenState extends State<OnboardMainScreen> {
  final PageController _controller = PageController();
  bool onFirstScreen = true;
  bool onLastScreen = false;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    loadShared();
  }
  Future<void> loadShared() async{
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onboard', isViewed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /// PageView
              Expanded(
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      onFirstScreen = (index == 0);
                      onLastScreen = (index == 1);
                    });
                  },
                  controller: _controller,
                  children: const [OnBoardFirstScreen(), OnBoardSecondScreen()],
                ),
              ),

              /// Buttons
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 14, right: 14),
                child: Container(
                  color: kdark,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        onFirstScreen
                            ? Container()
                            : OnBoardGestureDetector(
                                onFirstScreen: onFirstScreen,
                                onLastScreen: true,
                                controller: _controller,
                              ),
                        SmoothPageIndicator(
                          effect: const ExpandingDotsEffect(
                            dotHeight: 8,
                            dotWidth: 10,
                            activeDotColor: kmediumblue,
                            dotColor: kmediumblue,
                          ),
                          count: 2,
                          controller: _controller,
                        ),
                        OnBoardGestureDetector(
                          onFirstScreen: true,
                          onLastScreen: onLastScreen,
                          controller: _controller,
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
