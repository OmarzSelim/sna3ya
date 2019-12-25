import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class AdvancedSearch extends StatefulWidget {
  @override
  _AdvancedSearchState createState() => _AdvancedSearchState();
}

class _AdvancedSearchState extends State<AdvancedSearch> {
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
        title: Text('بحث متقدم'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            //padding: EdgeInsets.all(40.0),
            //width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: Container(
              padding: EdgeInsets.all(40.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          alignment: Alignment.topRight,
                          child: ListTile(
                            title: Text(
                              'ورشة متنقلة',
                              textAlign: TextAlign.right,
                            ),
                            leading: Icon(Icons.keyboard_arrow_down),
                          ),
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
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          alignment: Alignment.topRight,
                          child: ListTile(
                            title: Text(
                              'الرياض',
                              textAlign: TextAlign.right,
                            ),
                            leading: Icon(Icons.keyboard_arrow_down),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                width: 12.0,
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
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          alignment: Alignment.topRight,
                          child: ListTile(
                            title: Text(
                              'شارع التخصصي',
                              textAlign: TextAlign.right,
                            ),
                            leading: Icon(Icons.gps_fixed),
                          ),
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
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'التقييم',
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.6),
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ],
                  ),
                  //First Range Slider
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
                            activeTrackBar:
                                BoxDecoration(color: Colors.black54),
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
                          values: [0],
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          'سعرالخدمة',
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),

                  //Second Range Slide
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
                            activeTrackBar:
                                BoxDecoration(color: Colors.black54),
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
                          values: [0],
                          max: 200,
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
                                '200',
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
                                '20',
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
                          onPressed: () {},
                          child: Text('بحث'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
