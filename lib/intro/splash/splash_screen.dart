import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:productive/core/colors.dart';
import 'package:productive/generated/assets.dart';
import 'package:productive/intro/login/login.dart';
import 'package:productive/intro/onboard/onborad.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int? isViewed;
  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    loadShared();
  }

  Future<void> loadShared() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isViewed = prefs.getInt('onboard');
    print(isViewed);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => isViewed != 0 ? const OnboardMainScreen() : const LogInScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Column(
              children: const [
                Image(
                  image: AssetImage(Assets.assetsLogo),
                  height: 72,
                ),
                SizedBox(height: 12,),
                Text(
                  "Productive",
                  style: TextStyle(
                      color: kwhite, fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: CupertinoActivityIndicator(color: kwhite,radius: 16),
            )
          ],
        ),
      ),
    );
  }
}
