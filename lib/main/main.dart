import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:productive/intro/splash/splash_screen.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Productive',
      theme: ThemeData(
      ),
      home: const SplashScreen(),
    );
  }
}

