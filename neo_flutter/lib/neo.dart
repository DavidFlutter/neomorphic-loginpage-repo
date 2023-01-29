import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import 'page_two.dart';

class NeoMophHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade400,
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
              color: Colors.pink.shade400,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.shade200,
                  offset: Offset(-4, -4),
                  blurRadius: 10,
                  spreadRadius: 2,
                  inset: false,
                ),
                BoxShadow(
                  color: Colors.pink.shade600,
                  offset: Offset(4, 4),
                  blurRadius: 10,
                  spreadRadius: 2,
                  inset: false,
                ),
              ]),
          child: Column(
            children: [
              Spacer(),
              Container(
                child: Icon(
                  Icons.android,
                  size: 50,
                  color: Colors.pink.shade900,
                ),
                alignment: Alignment.center,
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.pink.shade400,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.shade200,
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                      spreadRadius: 2,
                      inset: false,
                    ),
                    BoxShadow(
                      color: Colors.pink.shade600,
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      spreadRadius: 2,
                      inset: false,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Container(
                child: TextField(
                  cursorColor: Colors.pink.shade700,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Username",
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 7,
                ),
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.pink.shade400,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.shade200,
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                      spreadRadius: 2,
                      inset: true,
                    ),
                    BoxShadow(
                      color: Colors.pink.shade600,
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      spreadRadius: 2,
                      inset: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                child: TextField(
                  obscureText: true,
                  cursorColor: Colors.pink.shade700,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 7,
                ),
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.pink.shade400,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.shade200,
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                      spreadRadius: 2,
                      inset: true,
                    ),
                    BoxShadow(
                      color: Colors.pink.shade600,
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      spreadRadius: 2,
                      inset: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Page02(),
                      ));
                },
                child: Container(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.pink.shade900,
                    ),
                  ),
                  alignment: Alignment.center,
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade400,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.shade200,
                        offset: Offset(-4, -4),
                        blurRadius: 10,
                        spreadRadius: 2,
                        inset: false,
                      ),
                      BoxShadow(
                        color: Colors.pink.shade600,
                        offset: Offset(4, 4),
                        blurRadius: 10,
                        spreadRadius: 2,
                        inset: false,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
