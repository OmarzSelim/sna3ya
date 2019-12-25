import 'package:flutter/material.dart';
import 'package:sna3ya_user/bottom_navigation_bar.dart';
import 'dart:ui';
import 'package:sna3ya_user/helpers/textfied.dart';
import 'package:sna3ya_user/terms.dart';
import 'package:sna3ya_user/login.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _userNameController = new TextEditingController();
  TextEditingController _mobileNumberController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmPasswordController =
      new TextEditingController();
  Color color;
  FocusNode _focusNode = FocusNode();
  FocusNode _secondFocusNode = FocusNode();
  FocusNode _fifthFocusNode = FocusNode();
  FocusNode _sixthFocusNode = FocusNode();

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
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: MaterialButton(
                            minWidth: 160.0,
                            height: 50.0,
                            color: Colors.black,
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            ),
                            child: Text(
                              'دخول',
                              style: TextStyle(
                                  color: Colors.orangeAccent,
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
                          //height: 0.0,
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
                              left: 30.0, right: 30.0, top: 50.0),
                          child: textFieldConst(
                            secure: false,
                            focusNode: _focusNode,
                            labelText: 'اسم المستخدم',
                            controller: _userNameController,
                            keyboardType: TextInputType.text,
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
                            secure: false,
                            focusNode: _secondFocusNode,
                            labelText: 'رقم الجوال',
                            controller: _mobileNumberController,
                            keyboardType: TextInputType.number,
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
                          margin: EdgeInsets.only(
                              right: 30.0, left: 30.0, top: 30.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              'ورشة متنقلة',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 14.0),
                            ),
                            leading: Icon(Icons.keyboard_arrow_down),
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
                          margin: EdgeInsets.only(
                              right: 30.0, left: 30.0, top: 30.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              'الموقع',
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 14.0),
                            ),
                            leading: Icon(Icons.gps_fixed),
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
                            focusNode: _fifthFocusNode,
                            labelText: 'كلمة المرور',
                            controller: _passwordController,
                            keyboardType: TextInputType.text,
                            textStyle: TextStyle(
                                fontSize: 13.0,
                                color: _fifthFocusNode.hasFocus
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
                            focusNode: _sixthFocusNode,
                            labelText: 'تأكيد كلمة المرور',
                            controller: _confirmPasswordController,
                            keyboardType: TextInputType.text,
                            textStyle: TextStyle(
                                color: _sixthFocusNode.hasFocus
                                    ? Colors.orange
                                    : Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(right: 30.0, left: 30.0),
                          child: MaterialButton(
                            height: 50.0,
                            color: Colors.orangeAccent,
                            child: Text(
                              'تسجيل',
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
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, right: 50.0, bottom: 20.0),
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Terms(),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 9,
                            child: Text(
                              'الموافقة على جميع شروط التطبيق',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: ImageIcon(
                                AssetImage('./images/check.png'),
                                color: Colors.orangeAccent,
                              ),
                              alignment: Alignment.topRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
