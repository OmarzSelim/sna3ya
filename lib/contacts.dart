import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  TextEditingController _complainController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  _launchURL() async {
    const url = 'https://www.facebbok.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'وسائل التواصل',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50.0),
            padding: EdgeInsets.fromLTRB(50.0, 40, 50.0, 40.0),
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
              ),
            ),
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  margin: EdgeInsets.only(bottom: 20.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        width: 15.0,
                                        color: Colors.grey,
                                      ),
                                      top: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      left: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      bottom: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    '09662233958459',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  margin: EdgeInsets.only(bottom: 20.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        width: 15.0,
                                        color: Colors.grey,
                                      ),
                                      top: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      left: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      bottom: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    'omarselim995@gmail.com',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  //margin: EdgeInsets.only(bottom: 20.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        width: 15.0,
                                        color: Colors.grey,
                                      ),
                                      top: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      left: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      bottom: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    'الرياض - شارع التخصصي',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Text(
                            'ارسال الشكوى ؟ --',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0, left: 10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(3.0),
                                  margin: EdgeInsets.only(bottom: 20.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        width: 15.0,
                                        color: Colors.grey,
                                      ),
                                      top: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      left: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      bottom: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topRight,
                                  child: TextFormField(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black,
                                      height: 0.5,
                                    ),
                                    controller: _nameController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10.0),
                                      hintText: 'الاسم بالكامل',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.withOpacity(0.4),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(25.7),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white70
                                                .withOpacity(0.9)),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(3.0),
                                  margin: EdgeInsets.only(bottom: 20.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        width: 15.0,
                                        color: Colors.grey,
                                      ),
                                      top: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      left: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      bottom: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topRight,
                                  child: TextFormField(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    maxLines: 1,
                                    style: TextStyle(
                                      color: Colors.black,
                                      height: 0.5,
                                    ),
                                    controller: _emailController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10.0),
                                      hintText: 'البريد الالكتروني',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.withOpacity(0.4),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(25.7),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white70
                                                .withOpacity(0.9)),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  margin: EdgeInsets.only(bottom: 20.0),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      right: BorderSide(
                                        width: 15.0,
                                        color: Colors.grey,
                                      ),
                                      top: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      left: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                      bottom: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.topRight,
                                  child: TextFormField(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.black, height: 1.0),
                                    controller: _complainController,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(0.0),
                                      hintText: 'نص الشكوى',
                                      hintStyle: TextStyle(
                                        color: Colors.grey.withOpacity(0.4),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(25.7),
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white70
                                                .withOpacity(0.9)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: MaterialButton(
                                  padding: EdgeInsets.all(12.0),
                                  color: Colors.orangeAccent,
                                  onPressed: () {},
                                  child: Text(
                                    'ارسال',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 25.0),
                                  child: Column(
                                    children: <Widget>[
                                      InkWell(
                                        onTap: _launchURL,
                                        child: Image.asset(
                                          './images/whats.png',
                                          width: 50.0,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 25.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(
                                        './images/insta.png',
                                        width: 50.0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 25.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(
                                        './images/twitter.png',
                                        width: 50.0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(top: 25.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(
                                        './images/face.png',
                                        width: 50.0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
