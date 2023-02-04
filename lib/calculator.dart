// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Widget numberBtn(String btnTxt, Color btnColor, Color txtColor){
    return ElevatedButton(
        onPressed: () => {
          calculate(btnTxt)
        },
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
                  padding: EdgeInsets.fromLTRB(10.0, 0, 30.0, 20.0),
                  child: Text(
                    text,
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
                numberBtn("7", Colors.grey[800]!, Colors.white),
                numberBtn("8", Colors.grey[800]!, Colors.white),
                numberBtn("9", Colors.grey[800]!, Colors.white),
                numberBtn("x", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberBtn("4", Colors.grey[800]!, Colors.white),
                numberBtn("5", Colors.grey[800]!, Colors.white),
                numberBtn("6", Colors.grey[800]!, Colors.white),
                numberBtn("-", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                numberBtn("1", Colors.grey[800]!, Colors.white),
                numberBtn("2", Colors.grey[800]!, Colors.white),
                numberBtn("3", Colors.grey[800]!, Colors.white),
                numberBtn("+", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.grey[800]!,
                  ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(28, 12, 90, 12),
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                ),
                numberBtn(".", Colors.grey[800]!, Colors.white),
                numberBtn("=", Colors.orange, Colors.white),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }


  // the application logic implementations
  int firstInput = 0;
  int secondInput = 0;
  String result = "";
  String text = "";
  String operator = "";

  void calculate(String btnClicked){
    if(btnClicked == "C"){
      result = "";
      text = "";
      firstInput = 0;
      secondInput = 0;
    }
    else if(btnClicked == "+" || btnClicked == "-" || btnClicked == "x" || btnClicked == "/"){
      firstInput = int.parse(text);
      result = "";
      operator = btnClicked;
    }
    else if(btnClicked == "="){
      secondInput = int.parse(text);
      if(operator == "+"){
        result = (firstInput + secondInput).toString();
      }
      if(operator == "-"){
        result = (firstInput - secondInput).toString();
      }
      if(operator == "x"){
        result = (firstInput * secondInput).toString();
      }
      if(operator == "/"){
        result = (firstInput / secondInput).toString();
      }
    }else{
      result = int.parse(text + btnClicked).toString();
    }

    setState(() {
      text = result;
    });
  }

}
