import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:sna3ya_user/terms.dart';
import 'package:sna3ya_user/helpers/textfied.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  TextEditingController _verifyController = new TextEditingController();
  Color color;
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.orange,
                width: 10.0,
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(top: 150.0, left: 10.0, right: 30.0),
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width - 10,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                './images/sanay3.png',
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
                                padding:
                                    EdgeInsets.only(left: 30.0, right: 30.0),
                                child: textFieldConst(
                                  secure: false,
                                  focusNode: _focusNode,
                                  labelText: 'كود التحقيق',
                                  controller: _verifyController,
                                  keyboardType: TextInputType.number,
                                  textStyle: TextStyle(
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
                                    'تأكيد',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Cairo'),
                                  ),
                                  onPressed: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => Terms())),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
