import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/helpers/menu.dart';

class Ads extends StatefulWidget {
  @override
  _AdsState createState() => _AdsState();
}

class _AdsState extends State<Ads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'الاعلانات',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            child: Image.asset('./images/Layer 3.png'),
          ),
        ),
        actions: <Widget>[
          Menu()
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 1000,
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.all(20.0),
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
              ),
            ),
            child: ListView.builder(
              itemCount: 11,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  decoration: BoxDecoration(),
                  child: Image.asset('./images/ad_one.png'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
