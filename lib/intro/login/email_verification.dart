import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:productive/core/colors.dart';
import 'package:productive/intro/login/create_password.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  String code = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      appBar: AppBar(
        backgroundColor: kdark,
        elevation: 0,
        title: const Text("Email verification"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Image(
            image: AssetImage("assets/login/person.png"),
            height: 130,
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: SizedBox(
              width: 280,
              height: 46,
              child: Text(
                "Please enter the 4 digital code that send to your email address",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18, color: kwhite, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Form(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 54,
                  child: TextField(
                    onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: TextStyle(color: kwhite),
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kblue
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: kdarkblack2,
                        isDense: true,
                        filled: true,
                      border: OutlineInputBorder(
                      )
                    ),
                  ),
                ),
                SizedBox(
                  width: 54,
                  child: TextField(
                    onChanged: (value){
                      if(value.length == 1 ){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: TextStyle(color: kwhite),
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kblue
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: kdarkblack2,
                        isDense: true,
                        filled: true,
                      border: OutlineInputBorder(
                      )
                    ),
                  ),
                ),
                SizedBox(
                  width: 54,
                  child: TextField(
                    onChanged: (value){
                      if(value.length == 1 ){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    style: TextStyle(color: kwhite),
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kblue
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: kdarkblack2,
                        isDense: true,
                        filled: true,
                      border: OutlineInputBorder(
                      )
                    ),
                  ),
                ),
                SizedBox(
                  width: 54,
                  child: TextField(
                    onChanged: (value){
                      if(value.length == 1 ){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => CreatePasswordScreen()));
                      }
                    },
                    style: TextStyle(color: kwhite),
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: kblue
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: kdarkblack2,
                        isDense: true,
                        filled: true,
                      border: OutlineInputBorder(
                      )
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'If you don\'t receive code.',
                style: TextStyle(color: kwhite),
              ),
              const SizedBox(
                width: 2,
              ),
              TextButton(
                onPressed: () {
                },
                child: const Text(
                  'Resend',
                  style: TextStyle(color: kmediumblue),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
