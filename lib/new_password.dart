import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:sna3ya_user/helpers/textfied.dart';
import 'package:sna3ya_user/login.dart';

class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  TextEditingController _verificationCodeController =
      new TextEditingController();
  TextEditingController _newPasswordController = new TextEditingController();
  TextEditingController _confirmPasswordController =
      new TextEditingController();
  Color color;
  FocusNode _focusNode = FocusNode();
  FocusNode _secondFocusNode = FocusNode();
  FocusNode _thirdFocusNode = FocusNode();

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
                          width: 200,
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 30.0, right: 30.0, top: 70.0),
                          child: textFieldConst(
                            secure: false,
                            focusNode: _focusNode,
                            labelText: 'كود التحقيق',
                            controller: _verificationCodeController,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 30.0, right: 30.0, top: 30.0),
                          child: textFieldConst(
                            secure: true,
                            focusNode: _secondFocusNode,
                            labelText: 'كلمة المرور الجديدة',
                            controller: _newPasswordController,
                            keyboardType: TextInputType.text,
                            textStyle: TextStyle(
                                fontSize: 13.0,
                                color: _secondFocusNode.hasFocus
                                    ? Colors.orange
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 30.0, right: 30.0, top: 30.0),
                          child: textFieldConst(
                            secure: true,
                            focusNode: _thirdFocusNode,
                            labelText: 'تأكيد كلمة المرور الجديدة',
                            controller: _confirmPasswordController,
                            keyboardType: TextInputType.text,
                            textStyle: TextStyle(
                                color: _thirdFocusNode.hasFocus
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
                            color: Colors.orangeAccent,
                            child: Text(
                              'تأكيد',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'),
                            ),
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            ),
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
