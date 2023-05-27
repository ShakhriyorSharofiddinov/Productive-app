import 'package:flutter/material.dart';
import 'package:productive/core/colors.dart';

import '../login/login.dart';

class OnBoardFirstScreen extends StatelessWidget {
  const OnBoardFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/intro/screen1.png"),
            ),
          ),
          Center(
            child: SizedBox(
              width: 280,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Easy Time Management",
                      style: TextStyle(
                        fontSize: 24,
                        color: kwhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "We help you stay organized and manage your day",
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
