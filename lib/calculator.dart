// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget numberBtn(String btnTxt, Color btnColor, Color txtColor){
    return ElevatedButton(
        onPressed: () => {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(70, 70),
        shape: CircleBorder(),
        backgroundColor: btnColor,
      ),
        child: Text(
          btnTxt,
          style: TextStyle(fontSize: 25, color: txtColor),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "0",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white, fontSize: 80.0),
                  ),
                ),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberBtn("C", Colors.grey, Colors.black),
                numberBtn("+/-", Colors.grey, Colors.black),
                numberBtn("%", Colors.grey, Colors.black),
                numberBtn("/", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberBtn("7", Colors.grey, Colors.black),
                numberBtn("8", Colors.grey, Colors.black),
                numberBtn("9", Colors.grey, Colors.black),
                numberBtn("x", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberBtn("4", Colors.grey, Colors.black),
                numberBtn("5", Colors.grey, Colors.black),
                numberBtn("6", Colors.grey, Colors.black),
                numberBtn("-", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberBtn("1", Colors.grey, Colors.black),
                numberBtn("2", Colors.grey, Colors.black),
                numberBtn("3", Colors.grey, Colors.black),
                numberBtn("+", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberBtn("0", Colors.grey, Colors.black),
                numberBtn("", Colors.grey, Colors.black),
                numberBtn(".", Colors.grey, Colors.black),
                numberBtn("=", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
