import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:sna3ya_user/confirm_rate.dart';

class ServiceRate extends StatefulWidget {
  @override
  _ServiceRateState createState() => _ServiceRateState();
}

class _ServiceRateState extends State<ServiceRate> {
  double _lowerValue;
  double _upperValue;
  RangeValues values = RangeValues(1, 10);
  RangeLabels labelss = RangeLabels('1', '10');
  double rating = 0.0;
  double val = 2.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'تقييم الخدمة',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 250),
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
                      child: FlutterSlider(
                        //rangeSlider: true,
                        tooltip: FlutterSliderTooltip(
                          boxStyle: FlutterSliderTooltipBox(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: new BorderRadius.only(
                                topRight: const Radius.circular(5.0),
                                bottomRight: const Radius.circular(5.0),
                                topLeft: const Radius.circular(20.0),
                                //bottomLeft: const Radius.circular(20.0),
                              ),
                            ),
                          ),
                          textStyle: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold),
                        ),
                        trackBar: FlutterSliderTrackBar(
                          //inactiveTrackBar: BoxDecoration(),
                          activeTrackBar: BoxDecoration(color: Colors.black54),
                        ),
                        handler: FlutterSliderHandler(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: ImageIcon(
                            AssetImage('./images/black_star.png'),
                          ),
                        ),
                        rtl: true,
                        values: [5],
                        max: 10,
                        min: 0,
                        onDragging: (handlerIndex, lowerValue, upperValue) {
                          _lowerValue = lowerValue;
                          _upperValue = upperValue;
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 35.0, right: 35.0),
                            child: Text(
                              '10',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 35.0, left: 35.0),
                            child: Text(
                              '0',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 50.0),
                  ),

                  Row(
                    children: <Widget>[
                      Expanded(
                        child: MaterialButton(
                          padding: EdgeInsets.all(10.0),
                          color: Colors.orangeAccent,
                          onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => ConfirmRate()),
                          ),
                          child: Text('تقييم'),
                        ),
                      )
                    ],
                  ),
               
              ],
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Image.asset(
              './images/rate.png',
              width: 250,
            ),
          ),
        ],
      ),
    );
  }
}
