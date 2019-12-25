import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/add_car.dart';

class CarTypes extends StatefulWidget {
  @override
  _CarTypesState createState() => _CarTypesState();
}

class _CarTypesState extends State<CarTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'أنواع السيارات',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Icon(Icons.chevron_left),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 1000,
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.all(10.0),
            //width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(12.0),
                        topRight: const Radius.circular(10.0),
                        bottomLeft: const Radius.circular(10.0),
                        bottomRight: const Radius.circular(10.0),
                      ),
                    ),
                    child: InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AddCar(),
                        ),
                      ),
                      child: Image.asset(
                        './images/plus.png',
                        width: 80.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 763,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 25.0,
                              right: 20.0,
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                color: Colors.orangeAccent,
                                child: Image.asset(
                                  './images/yellow_car.png',
                                  color: Colors.black,
                                  width: 27.0,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 50.0,
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
                                        padding: EdgeInsets.fromLTRB(
                                            0.0, 10.0, 40.0, 10.0),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1.0,
                                            color: Colors.orangeAccent,
                                          ),
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    'أوامر الشبكة',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.right,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: <Widget>[
                                                Expanded(
                                                  child: Text(
                                                    'نوع السيارة : شيفروليه 245',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    textAlign: TextAlign.right,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
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
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
