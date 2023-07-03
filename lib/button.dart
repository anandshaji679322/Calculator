import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:test123/home.dart';

class button extends StatelessWidget {
  var uvalue='0';
  var oldv=0;
  var lvalue='';
  var bname;
  final VoidCallback onpress;
  button({required this.bname,required this.onpress});
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10.0),
          child: TextButton(
            onPressed: () {
              onpress();
            },
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(
                    Size(75.0, 70.0)),
                backgroundColor: MaterialStateProperty.all(
                    Color(0xff272B34))),
            child: bname
          ),
        );
  }
}
