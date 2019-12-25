import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/edit_profile.dart';
import 'package:sna3ya_user/new_password.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isSwitched = true;
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

  void _showModalSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (builder) {
          return Container(
            padding: EdgeInsets.only(top: 50.0, left: 40.0, right: 40.0),
            height: 250,
            decoration: new BoxDecoration(
              color: Colors.black,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
              ),
            ),
            child: Column(
              children: <Widget>[
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
                              color: _language
                                  ? Colors.orangeAccent
                                  : Colors.white,
                            ),
                            top: BorderSide(
                              width: 1.0,
                              color: _language
                                  ? Colors.orangeAccent
                                  : Colors.white,
                            ),
                            left: BorderSide(
                              width: 1.0,
                              color: _language
                                  ? Colors.orangeAccent
                                  : Colors.white,
                            ),
                            bottom: BorderSide(
                              width: 1.0,
                              color: _language
                                  ? Colors.orangeAccent
                                  : Colors.white,
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
                              color:
                                  _english ? Colors.orangeAccent : Colors.white,
                            ),
                            top: BorderSide(
                              width: 1.0,
                              color:
                                  _english ? Colors.orangeAccent : Colors.white,
                            ),
                            left: BorderSide(
                              width: 1.0,
                              color:
                                  _english ? Colors.orangeAccent : Colors.white,
                            ),
                            bottom: BorderSide(
                              width: 1.0,
                              color:
                                  _english ? Colors.orangeAccent : Colors.white,
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
              ],
            ),
          );
        });
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
          'الاعدادات',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 200),
            padding: EdgeInsets.fromLTRB(50.0, 100, 50.0, 40.0),
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: _showModalSheet,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                width: 15.0,
                                color: Colors.orangeAccent,
                              ),
                              top: BorderSide(
                                width: 1.0,
                                color: Colors.orangeAccent,
                              ),
                              left: BorderSide(
                                width: 1.0,
                                color: Colors.orangeAccent,
                              ),
                              bottom: BorderSide(
                                width: 1.0,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                          alignment: Alignment.topRight,
                          child: ListTile(
                            title: Text(
                              _language ? 'اللغة العربية' : 'اللغة الانجليزية',
                              textAlign: TextAlign.right,
                            ),
                            leading: Image.asset(
                              './images/checked.png',
                              width: 30.0,
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
                        margin: EdgeInsets.only(bottom: 20.0),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              width: 15.0,
                              color: Colors.black87,
                            ),
                            top: BorderSide(
                              width: 1.0,
                              color: Colors.black87,
                            ),
                            left: BorderSide(
                              width: 1.0,
                              color: Colors.black87,
                            ),
                            bottom: BorderSide(
                              width: 1.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        alignment: Alignment.topRight,
                        child: ListTile(
                          title: Text(
                            _isSwitched ? 'مفتوحة' : 'مغلقة',
                            textAlign: TextAlign.right,
                          ),
                          leading: Switch(
                            activeTrackColor: Colors.orangeAccent,
                            activeColor: Colors.white,
                            onChanged: (val) {
                              setState(() {
                                _isSwitched = val;
                              });
                            },
                            value: _isSwitched,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => EditProfile()),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                width: 15.0,
                                color: Colors.orangeAccent,
                              ),
                              top: BorderSide(
                                width: 1.0,
                                color: Colors.orangeAccent,
                              ),
                              left: BorderSide(
                                width: 1.0,
                                color: Colors.orangeAccent,
                              ),
                              bottom: BorderSide(
                                width: 1.0,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                          alignment: Alignment.topRight,
                          child: ListTile(
                            title: Text(
                              'تعديل حسابي',
                              textAlign: TextAlign.right,
                            ),
                            leading: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.orangeAccent,
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
                      child: InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => NewPassword()),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20.0),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                width: 15.0,
                                color: Colors.black87,
                              ),
                              top: BorderSide(
                                width: 1.0,
                                color: Colors.black87,
                              ),
                              left: BorderSide(
                                width: 1.0,
                                color: Colors.black87,
                              ),
                              bottom: BorderSide(
                                width: 1.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          alignment: Alignment.topRight,
                          child: ListTile(
                            title: Text(
                              'تغيير كلمة المرور',
                              textAlign: TextAlign.right,
                            ),
                            leading: Icon(Icons.keyboard_arrow_left),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 0.0,
            left: 20.0,
            child: Image.asset(
              './images/setting.png',
              width: 220,
            ),
          ),
        ],
      ),
    );
  }
}
