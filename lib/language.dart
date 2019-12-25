import 'package:flutter/material.dart';
import 'package:sna3ya_user/login.dart';
import 'dart:ui';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  Color color;
  bool _language = false;
  bool _english = false;
  void _lang() {
    setState(() {
      if (!_language) {
        _language = true;
        _english = false;
      }
    });
  }

  void _otherLang() {
    setState(() {
      if (!_english) {
        _english = true;
        _language = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            /*Positioned(
              top: 286,
              right: 60.0,
              child: Container(
                color: Colors.white,
                child: Text(
                  'العربية',
                  style: TextStyle(
                    //backgroundColor: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),*/
            Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    width: 10.0,
                    color: Colors.orangeAccent,
                  ),
                ),
              ),
              padding: EdgeInsets.only(top: 150.0, left: 30.0, right: 30.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset(
                          './images/logo.png',
                          width: 200,
                          //height: 200,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          margin: EdgeInsets.only(top: 80.0),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                width: 15.0,
                                color: _language
                                    ? Colors.orangeAccent
                                    : Colors.black,
                              ),
                              top: BorderSide(
                                width: 1.0,
                                color: _language
                                    ? Colors.orangeAccent
                                    : Colors.black,
                              ),
                              left: BorderSide(
                                width: 1.0,
                                color: _language
                                    ? Colors.orangeAccent
                                    : Colors.black,
                              ),
                              bottom: BorderSide(
                                width: 1.0,
                                color: _language
                                    ? Colors.orangeAccent
                                    : Colors.black,
                              ),
                            ),
                          ),
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: _lang,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: _language
                                        ? Image.asset(
                                            './images/checked.png',
                                            width: 24.0,
                                          )
                                        : Container(),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    child: Image.asset(
                                      './images/arab_flag.png',
                                      width: 35.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          //margin: EdgeInsets.only(top: 80.0),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                width: 15.0,
                                color: _english
                                    ? Colors.orangeAccent
                                    : Colors.black,
                              ),
                              top: BorderSide(
                                width: 1.0,
                                color: _english
                                    ? Colors.orangeAccent
                                    : Colors.black,
                              ),
                              left: BorderSide(
                                width: 1.0,
                                color: _english
                                    ? Colors.orangeAccent
                                    : Colors.black,
                              ),
                              bottom: BorderSide(
                                width: 1.0,
                                color: _english
                                    ? Colors.orangeAccent
                                    : Colors.black,
                              ),
                            ),
                          ),
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: _otherLang,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    child: _english
                                        ? Image.asset(
                                            './images/checked.png',
                                            width: 24.0,
                                          )
                                        : Container(),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    child: Image.asset(
                                      './images/english_flag.png',
                                      width: 35.0,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: MaterialButton(
                            height: 50.0,
                            color: Colors.orangeAccent,
                            child: Text(
                              'اختيار',
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
            ),
          ],
        ),
      ),
    );
  }
}


