import 'dart:ffi';

import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  int firstValue = 0;
  int secondValue = 0;
  int ansValue = 0;
  var operatorValue = "";

  // for transfer first value to second value
  int boxTransfer = 0;

  // hide tonappear effect
  Color black = Colors.black;
  Color black1 = Colors.black;
  Color black2 = Colors.black;
  Color black3 = Colors.black;
  Color black4 = Colors.black;
  Color white = Colors.white;

  /*******************************************************************************************************************************/
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.all_inclusive, size: 30, color: Colors.white),
          title: Text("Calculator",
              style: TextStyle(letterSpacing: 2, fontSize: 25)),
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            firstValue = 0;
                            secondValue = 0;
                          });
                        },
                        child:
                            Icon(Icons.refresh, size: 30, color: Colors.white)),
                  ),
                ),
                // Container(
                //   height: 40,
                //   width: 40,
                //   child: Icon(Icons.category, size: 25, color: Colors.white),
                // ),
                // Container(
                //   height: 40,
                //   width: 40,
                //   child: Icon(Icons.more_vert, size: 25, color: Colors.white),
                // ),
              ],
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.black,
                //border: Border(bottom: BorderSide(color: Colors.white70,style: BorderStyle.solid),),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Colors.black,
                                    width: 2),
                              ),
                              child: Text("$firstValue",
                                  style: TextStyle(
                                      fontSize: 20, letterSpacing: 2,color: black1),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Colors.black,
                                    width: 2),
                              ),
                              child: Text(
                                "$operatorValue",
                                style:
                                    TextStyle(fontSize: 20, letterSpacing: 2,color: black2),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    style: BorderStyle.solid,
                                    color: Colors.black,
                                    width: 2),
                              ),
                              child: Text("$secondValue",
                                  style: TextStyle(
                                      fontSize: 20, letterSpacing: 2,color: black3),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              style: BorderStyle.solid,
                              color: Colors.black,
                              width: 2),
                        ),
                        child: Text(
                          "$ansValue",
                          style: TextStyle(fontSize: 20, letterSpacing: 2,color: black4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.black,
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //
                      //
                      //
                      // row 1
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  firstValue = 0;
                                  secondValue = 0;
                                  ansValue = 0;
                                  boxTransfer = 0;
                                  operatorValue = "";
                                  black1 = black;
                                  black2 = black;
                                  black3 = black;
                                  black4 = black;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "C",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white30),
                              ),
                            ),
                            //
                            //
                            //
                            // for module
                            InkWell(
                              onTap: () {
                                boxTransfer = 5;
                                setState(() {
                                  black2 = white;
                                  operatorValue = "%";
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "%",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white30),
                              ),
                            ),
                            //
                            //
                            //
                            // backspace
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(boxTransfer==0)
                                  {
                                    double backX = firstValue.toDouble();
                                    backX = backX / 10;
                                    firstValue = backX.toInt();

                                  }
                                  else
                                  {
                                    double backX = firstValue.toDouble();
                                    backX = backX / 10;
                                    firstValue = backX.toInt();
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Icon(Icons.backspace,
                                    color: Colors.white, size: 25),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white30),
                              ),
                            ),
                            //
                            //
                            // for division /
                            InkWell(
                              onTap: () {
                                boxTransfer = 4;
                                setState(() {
                                  black2 = white;
                                  operatorValue = "/";
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "/",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white30),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //
                      //
                      //
                      //
                      // row 2
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {

                                  if (boxTransfer == 0) {
                                    firstValue = firstValue * 10;
                                    firstValue = firstValue + 7;
                                    black1 = white;

                                  } else {
                                    secondValue = secondValue * 10;
                                    secondValue = secondValue + 7;
                                    black3 = white;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {


                                  if (boxTransfer == 0) {
                                    firstValue = firstValue * 10;
                                    firstValue = firstValue + 8;
                                    black1 = white;
                                  } else {
                                    secondValue = secondValue * 10;
                                    secondValue = secondValue + 8;
                                    black2 = white;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {


                                  if (boxTransfer == 0) {
                                    firstValue = firstValue * 10;
                                    firstValue = firstValue + 9;
                                    black1 = white;
                                  } else {
                                    secondValue = secondValue * 10;
                                    secondValue = secondValue + 9;
                                    black3 = white;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            //
                            //
                            // for multiplication *
                            InkWell(
                              onTap: () {
                                boxTransfer = 3;
                                setState(() {
                                  black2 = white;
                                  operatorValue = "x";
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Icon(Icons.clear,
                                    color: Colors.white, size: 30),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white30),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // row 3
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {

                                  if (boxTransfer == 0) {
                                    firstValue = firstValue * 10;
                                    firstValue = firstValue + 4;
                                    black1 = white;
                                  } else {
                                    secondValue = secondValue * 10;
                                    secondValue = secondValue + 4;
                                    black3 = white;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(boxTransfer==0)
                                  {
                                    firstValue = firstValue * 10;
                                    firstValue = firstValue + 5;
                                    black1 = white;
                                  }
                                  else
                                  {
                                    secondValue = secondValue * 10;
                                    secondValue = secondValue + 5;
                                    black3 = white;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(boxTransfer==0)
                                  {
                                    firstValue = firstValue * 10;
                                    firstValue = firstValue + 6;
                                    black1 = white;
                                  }
                                  else
                                  {
                                    secondValue = secondValue * 10;
                                    secondValue = secondValue + 6;
                                    black3 = white;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            //
                            //
                            // for substraction -
                            InkWell(
                              onTap: () {
                                boxTransfer = 2;
                                setState(() {
                                  operatorValue = "-";
                                  black2 = white;
                                });
                              },
                              child: Container(
                                alignment: Alignment.topCenter,
                                child: Icon(Icons.minimize,
                                    color: Colors.white, size: 40),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white30),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // row 4
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(boxTransfer==0)
                                  {
                                    firstValue = firstValue * 10;
                                    firstValue = firstValue + 1;
                                    black1 = white;
                                  }
                                  else
                                  {
                                    secondValue = secondValue * 10;
                                    secondValue = secondValue + 1;
                                    black3 = white;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(boxTransfer==0)
                                  {
                                    firstValue = firstValue * 10;
                                    firstValue = firstValue + 2;
                                    black1 = white;
                                  }
                                  else
                                  {
                                    secondValue = secondValue * 10;
                                    secondValue = secondValue + 2;
                                    black3 = white;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(boxTransfer==0)
                                  {
                                    firstValue = firstValue * 10;
                                    firstValue = firstValue + 3;
                                    black1 = white;
                                  }
                                  else
                                  {
                                    secondValue = secondValue * 10;
                                    secondValue = secondValue + 3;
                                    black3 = white;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            //
                            //
                            // for addition +
                            InkWell(
                              onTap: () {
                                boxTransfer = 1;
                                setState(() {
                                  operatorValue = "+";
                                  black2 = white;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white30),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // row 5
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(boxTransfer==0)
                                  {
                                    firstValue = firstValue * 100;
                                    black1 = white;

                                  }
                                  else
                                  {
                                    secondValue = secondValue * 100;
                                    black3 = white;

                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "00",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(boxTransfer==0)
                                  {
                                    firstValue = firstValue * 10;
                                    black1 = white;
                                  }
                                  else
                                  {
                                    secondValue = secondValue * 10;
                                    black3 = white;
                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "0",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                setState(() {
                                  if(boxTransfer==0)
                                  {
                                    //firstValue = firstValue + 0.01;
                                    black1 = white;

                                  }
                                  else
                                  {
                                    //secondValue = secondValue + 0.01;
                                    black3 = white;

                                  }
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  ".",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 35),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white70),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  if (boxTransfer == 1) {
                                    ansValue = firstValue + secondValue;
                                  } else if (boxTransfer == 2) {
                                    ansValue = firstValue - secondValue;
                                  } else if (boxTransfer == 3) {
                                    ansValue = firstValue * secondValue;
                                  } else if (boxTransfer == 4) {
                                    // ansValue = firstValue / secondValue;
                                  } else if (boxTransfer == 5) {
                                    // ansValue
                                  }
                                  black4 = white;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "=",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.deepOrange),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
