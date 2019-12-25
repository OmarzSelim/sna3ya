import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/ads.dart';
import 'package:sna3ya_user/car_types.dart';
import 'package:sna3ya_user/edit_profile.dart';
import 'package:sna3ya_user/favorite.dart';
import 'package:sna3ya_user/helpers/menu.dart';
import 'package:sna3ya_user/home.dart';
import 'package:sna3ya_user/providers.dart';

class MYAccount extends StatefulWidget {
  @override
  _MYAccountState createState() => _MYAccountState();
}

class _MYAccountState extends State<MYAccount> {
  static PageController _controller = PageController(initialPage: 1);
  final pageView = PageView(
    scrollDirection: Axis.horizontal,
    controller: _controller,
    children: <Widget>[MYAccount(), Ads(), Favorite(), Providers(), Home()],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'حسابي',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            child: Image.asset('./images/Layer 3.png'),
          ),
        ),
        actions: <Widget>[Menu()],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 1000,
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.all(40.0),
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
              ),
            ),
          ),
          Positioned(
            top: 30.0,
            right: 5.0,
            child: Container(
              child: Image.asset(
                './images/circle_bg.png',
                width: 280,
              ),
            ),
          ),
          Positioned(
            top: 55.0,
            left: 145,
            child: Container(
              child: Image.asset(
                './images/Layer 3.png',
                width: 110,
              ),
            ),
          ),
          Positioned(
            top: 50.0,
            left: 140,
            child: Container(
              child: Image.asset(
                './images/frame.png',
                width: 120,
              ),
            ),
          ),
          Positioned(
            top: 50.0,
            right: 130,
            child: Container(
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfile()),
                ),
                child: Image.asset(
                  './images/edit.png',
                  width: 25.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 210,
            child: Container(
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CarTypes(),
                  ),
                ),
                child: Image.asset(
                  './images/yellow_car.png',
                  width: 30.0,
                ),
              ),
            ),
          ),
          Positioned(
            top: 185,
            left: 140,
            child: Container(
              child: InkWell(
                  onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CarTypes(),
                        ),
                      ),
                  child: Text(
                    'سياراتي',
                    style: TextStyle(
                        color: Colors.orange,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  )),
            ),
          ),
          Positioned(
            top: 250,
            right: 20.0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.orangeAccent,
              child: Image.asset(
                './images/profile.png',
                width: 30.0,
              ),
            ),
          ),
          Positioned(
            top: 340,
            right: 20.0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.orangeAccent,
              child: Image.asset(
                './images/phone.png',
                width: 32.0,
              ),
            ),
          ),
          Positioned(
            top: 435,
            right: 20.0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.orangeAccent,
              child: Image.asset(
                './images/city.png',
                width: 32.0,
              ),
            ),
          ),
          Positioned(
            top: 525,
            right: 20.0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.orangeAccent,
              child: Image.asset(
                './images/map.png',
                width: 27.0,
              ),
            ),
          ),
          Positioned(
            top: 270,
            right: 40.0,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 40.0),
                      alignment: Alignment.topRight,
                      width: 330,
                      //width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 40.0, 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      child: Text(
                        'أوامر الشبكة',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 40.0),
                      alignment: Alignment.topRight,
                      width: 330,
                      //width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 40.0, 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      child: Text(
                        '00000000000',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 40.0),
                      alignment: Alignment.topRight,
                      width: 330,
                      //width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0.0, 10.0, 40.0, 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      child: Text(
                        'الرياض',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 40.0),
                      alignment: Alignment.topRight,
                      width: 330,
                      //width: double.infinity,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          'الرياض - شارع التخصصي',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14.0),
                          textAlign: TextAlign.right,
                        ),
                        leading: Image.asset('./images/plus.png', width: 20.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
