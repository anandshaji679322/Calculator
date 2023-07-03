import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test123/button.dart';

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
  int re = 0;

  int OperatorsPressed(a) {
    var r = 0;
    switch (a) {
      case 1:
        temp *= 0;
        result = '';
        uvalue = '';
        break;
      case 2:
        temp *= -1;
        uvalue = temp.toString();
        break;
      case 3:
        double t = temp / 100;
        uvalue = '$uvalue %';
        result = t.toString();
        op = 0;
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

  void EqualButtonpressed(b) {
    var r;
    switch (b) {
      case 4:
        r = oldv / temp;
        result = r.toString();
        print(result);
        op = 0;
        break;
      case 5:
        // uvalue='';
        r = oldv * temp;
        result = r.toString();
        print(result);
        op = 0;
        break;
      case 6:
        // uvalue='';
        r = oldv - temp;
        result = r.toString();
        print(result);
        op = 0;
        break;
      case 7:
        // uvalue='';
        r = oldv + temp;
        result = r.toString();
        print(result);
        op = 0;
        break;
      case 4:
        oldv = temp;
        temp = 0;
        op = 4;
        uvalue = '$temp/';
        op = 0;
        break;
    }
    re = 1;
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
                          button(
                            bname: Text(
                              "AC",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Color(0xff26E8C6),
                                ),
                              ),
                            ),
                            onpress: () {
                              print("ac");
                              setState(() {
                                OperatorsPressed(1);
                              });
                            },
                          ),
                          button(
                            bname: Icon(
                              CupertinoIcons.minus_slash_plus,
                              size: 30.0,
                              color: MaterialStateColor.resolveWith(
                                  (states) => Color(0xff26E8C6)),
                            ),
                            onpress: () {
                              setState(() {
                                print("+/-");
                                OperatorsPressed(2);
                              });
                            },
                          ),
                          button(
                            bname: Text(
                              "%",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Color(0xff26E8C6),
                                ),
                              ),
                            ),
                            onpress: () {
                              setState(() {
                                print("%");
                                OperatorsPressed(3);
                              });
                            },
                          ),
                          button(
                            bname: Icon(
                              CupertinoIcons.divide,
                              size: 30.0,
                              color: MaterialStateColor.resolveWith(
                                  (states) => Color(0xffE78388)),
                            ),
                            onpress: () {
                              print("/");
                              OperatorsPressed(4);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          button(
                            bname: Text(
                              "7",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                              ),
                            ),
                            onpress: () {
                              print("7");
                              setState(() {
                                if (re != 0) {
                                  temp = 0;
                                  uvalue = '';
                                  re = 0;
                                  result = '';
                                }
                                var a = 7;
                                temp = temp * 10 + 7;
                                uvalue = '$uvalue$a';
                              });
                            },
                          ),
                          button(
                            bname: Text(
                              "8",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                              ),
                            ),
                            onpress: () {
                              print("8");
                              setState(() {
                                if (re != 0) {
                                  temp = 0;
                                  uvalue = '';
                                  re = 0;
                                  result = '';
                                }
                                var a = 8;
                                temp = temp * 10 + 8;
                                uvalue = '$uvalue$a';
                              });
                            },
                          ),
                          button(
                            bname: Text(
                              "9",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                              ),
                            ),
                            onpress: () {
                              print("9");
                              setState(() {
                                if (re != 0) {
                                  temp = 0;
                                  uvalue = '';
                                  re = 0;
                                  result = '';
                                }
                                var a = 9;
                                temp = temp * 10 + 9;
                                uvalue = '$uvalue$a';
                              });
                            },
                          ),
                          button(
                            bname: Icon(
                              CupertinoIcons.multiply,
                              size: 30.0,
                              color: MaterialStateColor.resolveWith(
                                  (states) => Color(0xffE78388)),
                            ),
                            onpress: () {
                              setState(() {
                                OperatorsPressed(5);
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          button(
                              bname: Text(
                                "4",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  color: MaterialStateColor.resolveWith(
                                    (states) => Colors.white,
                                  ),
                                ),
                              ),
                              onpress: () {
                                print("4");
                                setState(() {
                                  if (re != 0) {
                                    temp = 0;
                                    uvalue = '';
                                    re = 0;
                                    result = '';
                                  }
                                  var a = 4;
                                  temp = temp * 10 + 4;
                                  uvalue = '$uvalue$a';
                                });
                              }),
                          button(
                            bname: Text(
                              "5",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                              ),
                            ),
                            onpress: () {
                              print("5");
                              setState(() {
                                if (re != 0) {
                                  temp = 0;
                                  uvalue = '';
                                  re = 0;
                                  result = '';
                                }
                                var a = 5;
                                temp = temp * 10 + 5;
                                uvalue = '$uvalue$a';
                              });
                            },
                          ),
                          button(
                            bname: Text(
                              "6",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                              ),
                            ),
                            onpress: () {
                              print("6");
                              setState(() {
                                if (re != 0) {
                                  temp = 0;
                                  uvalue = '';
                                  re = 0;
                                  result = '';
                                }
                                var a = 6;
                                temp = temp * 10 + 6;
                                uvalue = '$uvalue$a';
                              });
                            },
                          ),
                          button(
                            bname: Icon(
                              CupertinoIcons.minus,
                              size: 30.0,
                              color: MaterialStateColor.resolveWith(
                                  (states) => Color(0xffE78388)),
                            ),
                            onpress: () {
                              setState(() {
                                OperatorsPressed(6);
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          button(
                            bname: Text(
                              "1",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                              ),
                            ),
                            onpress: () {
                              print("1");
                              setState(() {
                                if (re != 0) {
                                  temp = 0;
                                  uvalue = '';
                                  re = 0;
                                  result = '';
                                }
                                var a = 1;
                                temp = temp * 10 + 1;
                                uvalue = '$uvalue$a';
                              });
                            },
                          ),
                          button(
                            bname: Text(
                              "2",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                              ),
                            ),
                            onpress: () {
                              print("2");
                              setState(() {
                                if (re != 0) {
                                  temp = 0;
                                  uvalue = '';
                                  re = 0;
                                  result = '';
                                }
                                var a = 2;
                                temp = temp * 10 + 2;
                                uvalue = '$uvalue$a';
                              });
                            },
                          ),
                          button(
                            bname: Text(
                              "3",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                              ),
                            ),
                            onpress: () {
                              print("3");
                              setState(() {
                                if (re != 0) {
                                  temp = 0;
                                  uvalue = '';
                                  re = 0;
                                  result = '';
                                }
                                var a = 3;
                                temp = temp * 10 + 3;
                                uvalue = '$uvalue$a';
                              });
                            },
                          ),
                          button(
                            bname: Icon(
                              CupertinoIcons.plus,
                              size: 30.0,
                              color: MaterialStateColor.resolveWith(
                                  (states) => Color(0xffE78388)),
                            ),
                            onpress: () {
                              print("+");
                              OperatorsPressed(7);
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          button(
                            bname: Icon(
                              CupertinoIcons.restart,
                              size: 30.0,
                              color: MaterialStateColor.resolveWith(
                                  (states) => Colors.white),
                            ),
                            onpress: () {
                              print("reset");
                            },
                          ),
                          button(
                            bname: Text(
                              "0",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                              ),
                            ),
                            onpress: () {
                              print("0");
                              setState(() {
                                if (re != 0) {
                                  temp = 0;
                                  uvalue = '';
                                  re = 0;
                                  result = '';
                                }
                                var a = 0;
                                temp = temp * 10;
                                uvalue = '$uvalue$a';
                              });
                            },
                          ),
                          button(
                            bname: Text(
                              ".",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: MaterialStateColor.resolveWith(
                                  (states) => Colors.white,
                                ),
                              ),
                            ),
                            onpress: () {
                              print(".");
                            },
                          ),
                          button(
                            bname: Icon(
                              CupertinoIcons.equal,
                              size: 30.0,
                              color: MaterialStateColor.resolveWith(
                                  (states) => Color(0xffE78388)),
                            ),
                            onpress: () {
                              setState(() {
                                print("=");
                                EqualButtonpressed(op);
                              });
                            },
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
