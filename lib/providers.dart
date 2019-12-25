import 'package:flutter/material.dart';
import 'package:sna3ya_user/adv_search.dart';
import 'package:sna3ya_user/details.dart';
import 'package:sna3ya_user/helpers/menu.dart';
//import 'package:flutter_xlider/flutter_xlider.dart';

class Providers extends StatefulWidget {
  @override
  _ProvidersState createState() => _ProvidersState();
}

class _ProvidersState extends State<Providers> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'مقدمي الخدمة',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            child: Image.asset('./images/Layer 3.png'),
          ),
        ),
        actions: <Widget>[Menu()],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            //height: 1000,
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.fromLTRB(40.0, 100, 40.0, 0.0),
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
              ),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  height: 120,
                  decoration: BoxDecoration(
                    //color: Colors.red,
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 7,
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    'أوامر الشبكة',
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    '0000000000',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    'الرياض - شارع التخصصي',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              /*Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              child: Text('25%'),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Container(
                                              child: FlutterSlider(
                                                tooltip: FlutterSliderTooltip(
                                                  boxStyle:
                                                      FlutterSliderTooltipBox(
                                                    decoration: BoxDecoration(
                                                      color:
                                                          Colors.orangeAccent,
                                                      borderRadius:
                                                          new BorderRadius.only(
                                                        topRight: const Radius
                                                            .circular(5.0),
                                                        bottomRight:
                                                            const Radius
                                                                .circular(5.0),
                                                        topLeft: const Radius
                                                            .circular(20.0),
                                                      ),
                                                    ),
                                                  ),
                                                  textStyle: TextStyle(
                                                      color: Colors.black54,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                trackBar: FlutterSliderTrackBar(
                                                  //inactiveTrackBar: BoxDecoration(),
                                                  activeTrackBar: BoxDecoration(
                                                      color: Colors.black54),
                                                ),
                                                handler: FlutterSliderHandler(
                                                  decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                  ),
                                                  child: Container(),
                                                ),
                                                rtl: true,
                                                values: [25],
                                                max: 100,
                                                min: 0,
                                                onDragging: (handlerIndex,
                                                    lowerValue, upperValue) {
                                                  _lowerValue = lowerValue;
                                                  _upperValue = upperValue;
                                                  setState(() {});
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      )*/
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 0.0),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.topRight,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                child: InkWell(
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Details(),
                                    ),
                                  ),
                                  child: Image.asset(
                                    './images/Layer 3.png',
                                    width: 80,
                                  ),
                                ),
                              ),
                              Positioned(
                                child: Container(
                                  child: Image.asset(
                                    './images/small_star.png',
                                    width: 25.0,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 40.0,
            left: 30.0,
            child: Padding(
              padding: EdgeInsets.only(top: 0.0),
              child: Card(
                elevation: 4.0,
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
                ),
                child: Container(
                  padding: EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 2.0, bottom: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    color: Colors.white,
                  ),
                  child: SizedBox(
                    width: 330.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => AdvancedSearch(),
                                ),
                              ),
                              child: Image.asset(
                                './images/filter.png',
                                width: 25.0,
                              ),
                            )),
                        Container(
                          height: 30.0,
                          width: 1.0,
                          color: Colors.grey,
                          margin:
                              const EdgeInsets.only(left: 10.0, right: 10.0),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            './images/search.png',
                            width: 25.0,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.right,
                            controller: _searchController,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(right: 10.0, left: 10.0),
                              hintText: 'بحث',
                              hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.6),
                                fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
