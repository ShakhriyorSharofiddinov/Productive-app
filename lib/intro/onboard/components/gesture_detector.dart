import 'package:flutter/material.dart';
import 'package:productive/intro/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/colors.dart';

class OnBoardGestureDetector extends StatelessWidget {
  final bool onFirstScreen;
  final bool onLastScreen;
  final PageController controller;

  const OnBoardGestureDetector(
      {Key? key,
      required this.onFirstScreen,
      required this.onLastScreen,
      required this.controller})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onFirstScreen
            ? (onLastScreen
                ?
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LogInScreen()))
                : controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  ))
            : controller.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
      },
      child: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kmediumblue,
        ),
        child: Icon(
          onFirstScreen ? Icons.navigate_next : Icons.navigate_before,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
