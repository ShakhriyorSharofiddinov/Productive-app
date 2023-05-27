import 'package:flutter/material.dart';
import 'package:productive/core/colors.dart';

import '../login/login.dart';

class OnBoardSecondScreen extends StatelessWidget {
  const OnBoardSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Skip
          Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => LogInScreen()));
                  },
                  child: const Text(
                    "SKIP",
                    style: TextStyle(color: kmediumblue),
                  ))),
          const Spacer(),

          /// Image
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/intro/screen2.png"),
            ),
          ),

          /// Text
          Center(
            child: SizedBox(
              width: 300,
              height: 110,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Track Your Expense",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        color: kwhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "We help you stay organized your expenses easily and safely",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: kgrey),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
