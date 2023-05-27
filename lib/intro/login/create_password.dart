
import 'package:flutter/material.dart';
import 'package:productive/core/colors.dart';
import 'package:productive/intro/login/components/my_button.dart';
import 'package:productive/intro/login/components/my_textfield.dart';
import 'package:productive/intro/login/email_verification.dart';
import 'package:productive/intro/login/login.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  final confirmPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  String text = "";
  bool showColor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdark,
      appBar: AppBar(
        backgroundColor: kdark,
        centerTitle: true,
        elevation: 0,
        leading: const SizedBox(),
        title: const Text("Create new password"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16, bottom: 30, right: 16, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
                child: Image(
              image: AssetImage("assets/login/person.png"),
              height: 130,
            )),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: MyTextField(
                      controller: newPasswordController,
                      hintText: "Enter new password",
                      obscureText: true),
                ),
                TextField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    onChanged: (value) {
                      text = value;
                       setState(() {
                         if (newPasswordController.text == text && text.length >= 6) {
                           showColor = true;
                         }else{
                           showColor = false;
                         }
                       });
                    },
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
                        suffixIcon: Icon(
                          Icons.check_circle,
                          color: showColor ? Colors.green : kgrey,
                          size: 24,
                        ),
                        fillColor: kdarkblack2,
                        isDense: true,
                        filled: true,
                        hintText: 'Confirm password',
                        hintStyle: const TextStyle(color: kgrey))),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
            MyButton(
              onTap: showColor ? () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => LogInScreen() ), (route) => false);
              } : (){},
              text: "Save",
              showColor: showColor,
            )
          ],
        ),
      ),
    );
  }
}
