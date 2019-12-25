import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/edit_profile.dart';
import 'package:sna3ya_user/new_password.dart';

class AddCar extends StatefulWidget {
  @override
  _AddCarState createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  String _text;
  bool _isSwitched = true;
  bool _language = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'اضافة سيارة',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
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
                        onTap: (){},
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
                            leading: Image.asset('./images/checked.png', width: 30.0,),
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
                            '$_text',
                            textAlign: TextAlign.right,
                          ),
                          leading: Switch(
                            activeTrackColor: Colors.orangeAccent,
                            activeColor: Colors.white,
                            onChanged: (val) {
                              setState(() {
                                _isSwitched = val;
                                if (_isSwitched) {
                                  _text = 'مفتوحة';
                                } else {
                                  _text = 'مغلقة';
                                }
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
