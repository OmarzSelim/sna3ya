import 'package:flutter/material.dart';
import 'package:sna3ya_user/bottom_navigation_bar.dart';
import 'package:sna3ya_user/forget_password.dart';
import 'dart:ui';
import 'package:sna3ya_user/helpers/textfied.dart';
import 'package:sna3ya_user/sign_up.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _mobileNumberController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  Color color;
  FocusNode _focusNode = FocusNode();
  FocusNode _secondFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 10.0,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              padding: EdgeInsets.only(top: 0.0, left: 10.0, right: 30.0),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(0),
                        //color: Colors.redAccent,
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: MaterialButton(
                            minWidth: 160.0,
                            height: 50.0,
                            color: Colors.black,
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => SignIn()),
                            ),
                            child: Text(
                              'تسجيل',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          './images/logo.png',
                          width: 250,
                          //height: 200,
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
                            controller: _mobileNumberController,
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
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: 0.0, top: 20.0, right: 30.0, left: 30.0),
                    child: textFieldConst(
                      secure: true,
                      focusNode: _secondFocusNode,
                      labelText: 'كلمة المرور',
                      controller: _passwordController,
                      keyboardType: TextInputType.text,
                      textStyle: TextStyle(
                        fontSize: 13.0,
                        color: _secondFocusNode.hasFocus
                            ? Colors.orange
                            : Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 23.0, left: 23.0),
                        child: FlatButton(
                          onPressed: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ForgetPassword(),
                          )),
                          child: Text(
                            'هل نسيت كلمة المرور؟',
                            style: TextStyle(
                              color: Colors.black87.withOpacity(0.4),
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(right: 30.0, left: 30.0),
                          child: MaterialButton(
                            height: 50.0,
                            color: Colors.orange,
                            child: Text(
                              'دخول',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'),
                            ),
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => BottomNavigationBarInfo(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
