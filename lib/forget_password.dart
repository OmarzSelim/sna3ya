import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:sna3ya_user/helpers/textfied.dart';
import 'package:sna3ya_user/new_password.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _mobileNumberAddController =
      new TextEditingController();
  Color color;
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 10.0,
                  color: Colors.orangeAccent,
                ),
              ),
            ),
            padding: EdgeInsets.only(top: 200, left: 10.0, right: 30.0),
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          './images/logo.png',
                          width: 250,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 70.0),
                          child: textFieldConst(
                            secure: false,
                            focusNode: _focusNode,
                            labelText: 'رقم الجوال',
                            controller: _mobileNumberAddController,
                            keyboardType: TextInputType.number,
                            textStyle: TextStyle(
                                fontSize: 13.0,
                                color: _focusNode.hasFocus
                                    ? Colors.orange
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              right: 30.0, left: 30.0, top: 20.0),
                          child: MaterialButton(
                            height: 50.0,
                            color: Colors.orange,
                            child: Text(
                              'ارسال',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'),
                            ),
                            onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => NewPassword())),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
