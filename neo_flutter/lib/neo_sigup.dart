import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:neo_flutter/utils/neo_button.dart';

import 'page_two.dart';

class NeoMophRegister extends StatelessWidget {
  var myColor = Colors.grey;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confrimPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void displayMessage(var message) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(message),
          );
        },
      );
    }

    void signUp() async {
      showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      );
      if (passwordController.text == confrimPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        Navigator.pop(context);
        displayMessage("Account created");
      } else {
        Navigator.pop(context);
        displayMessage("Passwords are not the same");
      }
      passwordController.clear();
      confrimPasswordController.clear();
    }

    return Scaffold(
      backgroundColor: myColor.shade400,
      body: Center(
        child: NeoItem(
          isInset: false,
          myColor: myColor,
          myHeight: 500.0,
          myWidth: 500.0,
          myChild: Column(
            children: [
              Spacer(),
              NeoItem(
                isInset: false,
                myChild: Icon(
                  Icons.android,
                  size: 25.0,
                  color: myColor.shade900,
                ),
                myColor: myColor,
                myHeight: 35.0,
                myWidth: 35.0,
              ),
              SizedBox(height: 50),
              NeoTextField(
                myController: emailController,
                isPass: false,
                inputText: "Email",
                isInset: true,
                myColor: myColor,
                myHeight: 50.0,
                myWidth: 300.0,
              ),
              SizedBox(height: 40),
              NeoTextField(
                myController: passwordController,
                isPass: true,
                isInset: true,
                inputText: "Password",
                myColor: myColor,
                myHeight: 50.0,
                myWidth: 300.0,
              ),
              SizedBox(height: 40),
              NeoTextField(
                myController: confrimPasswordController,
                isPass: true,
                isInset: true,
                inputText: "Confirm password",
                myColor: myColor,
                myHeight: 50.0,
                myWidth: 300.0,
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  signUp();
                },
                child: NeoItem(
                  isInset: false,
                  myChild: Text(
                    "Register",
                    style: TextStyle(
                      color: myColor.shade900,
                    ),
                  ),
                  myColor: myColor,
                  myHeight: 30.0,
                  myWidth: 300.0,
                ),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Spacer(),
                  Text("Already have an accont? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Login now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
