import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeoItem extends StatelessWidget {
  var myColor;
  var myHeight;
  var myWidth;
  var isInset;
  var myChild;

  NeoItem({
    this.myColor,
    this.myHeight,
    this.myWidth,
    this.isInset,
    this.myChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: myChild,
      alignment: Alignment.center,
      height: myHeight,
      width: myWidth,
      decoration: BoxDecoration(
        color: myColor.shade400,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: myColor.shade200,
            offset: Offset(-4, -4),
            blurRadius: 10,
            spreadRadius: 2,
            inset: isInset,
          ),
          BoxShadow(
            color: myColor.shade600,
            offset: Offset(4, 4),
            blurRadius: 10,
            spreadRadius: 2,
            inset: isInset,
          ),
        ],
      ),
    );
  }
}

class NeoTextField extends StatelessWidget {
  var myColor;
  var myHeight;
  var myWidth;
  var isInset;
  var isPass;
  var inputText;
  var myController;

  NeoTextField({
    this.myColor,
    this.myHeight,
    this.myWidth,
    this.isInset,
    this.inputText,
    this.isPass,
    this.myController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: myController,
        obscureText: isPass,
        cursorColor: myColor.shade700,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: inputText,
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      alignment: Alignment.center,
      height: myHeight,
      width: myWidth,
      decoration: BoxDecoration(
        color: myColor.shade400,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: myColor.shade200,
            offset: Offset(-4, -4),
            blurRadius: 10,
            spreadRadius: 2,
            inset: isInset,
          ),
          BoxShadow(
            color: myColor.shade600,
            offset: Offset(4, 4),
            blurRadius: 10,
            spreadRadius: 2,
            inset: isInset,
          ),
        ],
      ),
    );
  }
}
