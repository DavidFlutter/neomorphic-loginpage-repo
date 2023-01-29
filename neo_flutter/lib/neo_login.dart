import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:neo_flutter/neo_sigup.dart';
import 'package:neo_flutter/utils/neo_button.dart';

import 'page_two.dart';

class NeoMophLogin extends StatelessWidget {
  var myColor = Colors.grey;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

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

    void signIn() async {
      showDialog(
        context: context,
        builder: (context) {
          return Center(child: CircularProgressIndicator());
        },
      );
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        if (e.code == "user-not-found") {
          // Do something
          Navigator.pop(context);
          displayMessage(e.code);
        } else if (e.code == "wrong-password") {
          // Do something
          Navigator.pop(context);
          displayMessage(e.code);
        }
      }
      passwordController.clear();
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
                  size: 50.0,
                  color: myColor.shade900,
                ),
                myColor: myColor,
                myHeight: 70.0,
                myWidth: 70.0,
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
              GestureDetector(
                onTap: () {
                  signIn();
                },
                child: NeoItem(
                  isInset: false,
                  myChild: Text(
                    "Login",
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
                  Text("Don't have an accont? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NeoMophRegister(),
                          ));
                    },
                    child: Text(
                      "Register now",
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
