import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  var uvalue = '';
  var result = '';
  var oldv;
  var op;
  var temp = 0;
  int re=0;

  int operation(a) {
    var r = 0;
    switch (a) {
      case 1:
        temp *= 0;
        result='';
        uvalue = '';
        break;
      case 2:
        temp *= -1;
        uvalue = temp.toString();
        break;
      case 3:
        break;
      case 4:
        oldv = temp;
        temp = 0;
        op = 4;
        uvalue = '$uvalue/';
        break;
      case 5:
        oldv = temp;
        temp = 0;
        op = 5;
        uvalue = '$uvalue x';
        break;
      case 6:
        oldv = temp;
        temp = 0;
        op = 6;
        uvalue = '$uvalue -';
        break;
      case 7:
        oldv = temp;
        temp = 0;
        op = 7;
        uvalue = '$uvalue +';
        break;
    }
    return r;
  }

  void equal(b) {
    var r;
    switch (b) {
      case 4:
        r = oldv / temp;
        result = r.toString();
        print(result);
        op=0;
        break;
      case 5:
        // uvalue='';
        r = oldv * temp;
        result = r.toString();
        print(result);
        op=0;
        break;
      case 6:
      // uvalue='';
        r = oldv - temp;
        result = r.toString();
        print(result);
        op=0;
        break;
      case 7:
        // uvalue='';
        r = oldv + temp;
        result = r.toString();
        print(result);
        op=0;
        break;
      case 4:
        oldv = temp;
        temp = 0;
        op = 4;
        uvalue = '$temp/';
        op=0;
        break;

    }
    re=1;
  }

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff22252D),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 240.0,
                color: Color(0xff22252D),
                padding: EdgeInsets.only(top: 150.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                      "$uvalue",
                    ),
                    Text(
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45.0,
                        color: Colors.white,
                      ),
                      "$result",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff292D36),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("ac");
                                setState(() {
                                  operation(1);
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "AC",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Color(0xff26E8C6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  print("+/-");
                                  operation(2);
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.minus_slash_plus,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                    (states) => Color(0xff26E8C6)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("%");
                                operation(3);
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "%",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Color(0xff26E8C6),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("/");
                                operation(4);
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.divide,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                    (states) => Color(0xffE78388)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("7");
                                setState(() {
                                  if(re!=0){
                                    temp=0;
                                    uvalue='';
                                    re=0;
                                    result='';
                                  }
                                      var a = 7;
                                      temp = temp * 10 + 7;
                                      uvalue = '$uvalue$a';

                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "7",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("8");
                                setState(() {
                                  if(re!=0){
                                    temp=0;
                                    uvalue='';
                                    re=0;
                                    result='';
                                  }
                                  var a = 8;
                                  temp = temp * 10 + 8;
                                  uvalue = '$uvalue$a';
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "8",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("9");
                                setState(() {
                                  if(re!=0){
                                    temp=0;
                                    uvalue='';
                                    re=0;
                                    result='';
                                  }
                                  var a = 9;
                                  temp = temp * 10 + 9;
                                  uvalue = '$uvalue$a';
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "9",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  operation(5);
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.multiply,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                    (states) => Color(0xffE78388)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("4");
                                setState(() {
                                  if(re!=0){
                                    temp=0;
                                    uvalue='';
                                    re=0;
                                    result='';
                                  }
                                  var a = 4;
                                  temp = temp * 10 + 4;
                                  uvalue = '$uvalue$a';
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("5");
                                setState(() {
                                  if(re!=0){
                                    temp=0;
                                    uvalue='';
                                    re=0;
                                    result='';
                                  }
                                  var a = 5;
                                  temp = temp * 10 + 5;
                                  uvalue = '$uvalue$a';
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "5",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("6");
                                setState(() {
                                  if(re!=0){
                                    temp=0;
                                    uvalue='';
                                    re=0;
                                    result='';
                                  }
                                  var a = 6;
                                  temp = temp * 10 + 6;
                                  uvalue = '$uvalue$a';
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "6",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  operation(6);
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                    (states) => Color(0xffE78388)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("1");
                                setState(() {
                                  if(re!=0){
                                    temp=0;
                                    uvalue='';
                                    re=0;
                                    result='';
                                  }
                                  var a = 1;
                                  temp = temp * 10 + 1;
                                  uvalue = '$uvalue$a';
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("2");
                                setState(() {
                                  if(re!=0){
                                    temp=0;
                                    uvalue='';
                                    re=0;
                                    result='';
                                  }
                                  var a = 2;
                                  temp = temp * 10 + 2;
                                  uvalue = '$uvalue$a';
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("3");
                                setState(() {
                                  if(re!=0){
                                    temp=0;
                                    uvalue='';
                                    re=0;
                                    result='';
                                  }
                                  var a = 3;
                                  temp = temp * 10 + 3;
                                  uvalue = '$uvalue$a';
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "3",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("+");
                                operation(7);
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.plus,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                    (states) => Color(0xffE78388)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("reset");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.restart,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print("0");
                                setState(() {
                                  if(re!=0){
                                    temp=0;
                                    uvalue='';
                                    re=0;
                                    result='';
                                  }
                                  var a = 0;
                                  temp = temp * 10;
                                  uvalue = '$uvalue$a';
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                print(".");
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Text(
                                ".",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.0, top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  print("=");
                                  equal(op);
                                });
                              },
                              style: ButtonStyle(
                                  fixedSize: MaterialStateProperty.all(
                                      Size(75.0, 70.0)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff272B34))),
                              child: Icon(
                                CupertinoIcons.equal,
                                size: 30.0,
                                color: MaterialStateColor.resolveWith(
                                    (states) => Color(0xffE78388)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}