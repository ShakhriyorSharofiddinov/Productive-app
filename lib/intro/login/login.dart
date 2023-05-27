import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:productive/core/colors.dart';
import 'package:productive/intro/login/forget.dart';
import 'package:productive/intro/login/signin.dart';
import 'package:productive/main/screens/home.dart';

import 'components/my_button.dart';
import 'components/my_textfield.dart';
import 'components/square_tile.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool showPassword = true;
  bool showColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),

                /// logo
                const Image(
                  image: AssetImage(
                    "assets/logo.png",
                  ),
                  height: 72,
                ),

                const SizedBox(height: 44),

                /// email text-field
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 16),

                /// password text-field
                TextField(
                  onChanged: (value) {
                    setState(() {
                      if (value.length >= 6) {
                        showColor = true;
                      } else {
                        showColor = false;
                      }
                    });
                  },
                  controller: passwordController,
                  obscureText: showPassword,
                  style: const TextStyle(color: kwhite),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          child: showPassword
                              ? const Icon(
                            Icons.visibility_off,
                            color: kgrey,
                            size: 24,
                          )
                              : const Icon(
                            Icons.visibility,
                            color: kmediumblue,
                            size: 24,
                          )),
                      fillColor: kdarkblack2,
                      isDense: true,
                      filled: true,
                      hintText: 'Password',
                      hintStyle: TextStyle(color: kgrey)),
                ),

                /// forgot password?
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            _) => ForgetPasswordScreen()));
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: kmediumblue),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 26),

                /// sign in button
                MyButton(
                  onTap: showColor ? () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const Center(
                          child: CupertinoActivityIndicator(
                            color: kwhite, radius: 16,),
                        );
                      },
                    );
                    Future.delayed(const Duration(seconds: 2), () {
                      Navigator.pop(context);
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => HomeScreen()), (route) => false);
                    });
                  } : (){},
                text: "Login",
                showColor: showColor,
                ),

                const SizedBox(height: 70),

                /// or continue with
                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 0.3,
                        color: kwhite,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'OR',
                        style: TextStyle(color: kwhite),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.3,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                /// facebook + google + apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [

                    /// facebook button
                    SquareTile(
                      imagePath: 'assets/login/facebook.png',
                    ),

                    SizedBox(width: 30),

                    /// google button
                    SquareTile(
                      imagePath: 'assets/login/google.png',
                    ),

                    SizedBox(width: 30),

                    /// apple button
                    SquareTile(
                      imagePath: 'assets/login/apple.png',
                    ),
                  ],
                ),

                const SizedBox(height: 100),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: kwhite),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            _) => SignInScreen()));
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(color: kmediumblue),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
