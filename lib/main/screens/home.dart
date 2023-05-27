import 'package:flutter/material.dart';
import 'package:productive/core/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      // appBar: AppBar(
      //   backgroundColor: kdark,
      //   elevation: 0,
      //   title: Text("Home page"),
      // ),
      body: SafeArea(
        child: Center(
          child: Text("H O M E    P A G E",style: TextStyle(color: kwhite),),
        ),
      ),
    );
  }
}
