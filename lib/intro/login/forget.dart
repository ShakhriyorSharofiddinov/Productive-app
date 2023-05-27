import 'package:flutter/material.dart';
import 'package:productive/core/colors.dart';
import 'package:productive/intro/login/components/my_button.dart';
import 'package:productive/intro/login/components/my_textfield.dart';
import 'package:productive/intro/login/email_verification.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final emailController = TextEditingController();
  bool showColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      appBar: AppBar(
        backgroundColor: kdark,
        elevation: 0,
        title: const Text("Forget password"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16,bottom: 30,right: 16,top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
                child: Image(
              image: AssetImage("assets/login/personLogo.png"),
              height: 130,
            )),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Email", style:TextStyle(color: kwhite,fontSize: 18),),
                ),

                TextField(
                  onChanged: (value){
                    setState(() {
                      if(value.length >= 9){
                        showColor = true;
                      }else{
                        showColor = false;
                      }
                    });
                  },
                  controller: emailController,
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
                      fillColor: kdarkblack2,
                      isDense: true,
                      filled: true,
                ))
              ],
            ),
            const Spacer(
              flex: 3,
            ),
            MyButton(
              onTap: showColor ? (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => EmailVerificationScreen()));
              } : (){},
              text: "Recover password",
              showColor: showColor,
            )
          ],
        ),
      ),
    );
  }
}
