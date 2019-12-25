import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/bottom_navigation_bar.dart';

class ConfirmRate extends StatefulWidget {
  @override
  _ConfirmRateState createState() => _ConfirmRateState();
}

class _ConfirmRateState extends State<ConfirmRate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'تأكيد التقييم',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 200),
            padding: EdgeInsets.fromLTRB(40.0, 130, 40.0, 40.0),
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
                      child: Text(
                        'تم تقييم مقدم الخدمة بنجاح و نتمنى يكون مستوى تقديم الخدمة جيد',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 60.0)),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    BottomNavigationBarInfo())),
                        child: Text(
                          'الذهاب للرئيسية',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Image.asset(
              './images/confirm_reservation.png',
              width: 280,
            ),
          ),
        ],
      ),
    );
  }
}
