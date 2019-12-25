import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/services_confirmation.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  void _showModalSheet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (builder) {
          return Container(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'ورشة متنقلة',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Stack(
                      children: <Widget>[
                        /*Positioned(
                            top: 25.0,
                            right: 10.0,
                            child: Container(
                              decoration: BoxDecoration(color: Colors.black),
                              child: Text(
                                'نوع السيارة',
                                style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold,
                                  //backgroundColor: Colors.orangeAccent,
                                ),
                              ),
                            )),*/
                        Container(
                          margin: EdgeInsets.only(top: 40.0),
                          alignment: Alignment.topRight,
                          child: Text(
                            'كيا كرولا 2018',
                            style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                width: 12.0,
                                color: Colors.orangeAccent,
                              ),
                              top: BorderSide(
                                width: 1.5,
                                color: Colors.orangeAccent,
                              ),
                              left: BorderSide(
                                width: 0.5,
                                color: Colors.orangeAccent,
                              ),
                              bottom: BorderSide(
                                width: 0.5,
                                color: Colors.orangeAccent,
                              ),
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                        ),
                      ],
                    ))
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(15.0),
                        color: Colors.orangeAccent,
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => ServicesConfirmation())),
                        child: Text(
                          'تأكيد',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            padding: EdgeInsets.all(40.0),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'صفحة التفاصيل',
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
          ),
          leading: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Icon(Icons.chevron_left),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: ImageIcon(AssetImage('./images/filter.png')),
            )
          ],
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
                    child: InkWell(
                      onTap: _showModalSheet,
                      child: Container(
                        child: Image.asset(
                          './images/checked.png',
                          width: 80.0,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Image.asset(
                            './images/cover.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 50.0,
                              child: Container(
                                /*padding:
                                    EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),*/
                                decoration: BoxDecoration(
                                  //color: Colors.orangeAccent.withOpacity(0.9),
                                  borderRadius: new BorderRadius.only(
                                    bottomLeft: const Radius.circular(50.0),
                                    bottomRight: const Radius.circular(50.0),
                                  ),
                                ),
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  './images/yellow_heart.png',
                                  width: 40.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 0,
                              left: 95.0,
                              child: Container(
                                decoration: BoxDecoration(
                                  //color: Colors.orangeAccent.withOpacity(0.9),
                                  borderRadius: new BorderRadius.only(
                                    bottomLeft: const Radius.circular(50.0),
                                    bottomRight: const Radius.circular(50.0),
                                  ),
                                ),
                                alignment: Alignment.topCenter,
                                child: Image.asset(
                                  './images/black_share.png',
                                  width: 40.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 20,
                              right: 20.0,
                              child: Container(
                                child: Container(
                                  alignment: Alignment.topCenter,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        child: Image.asset(
                                          './images/white_frame.png',
                                          width: 110,
                                        ),
                                      ),
                                      Positioned(
                                        top: 5.0,
                                        right: 5.0,
                                        child: Image.asset(
                                          './images/Layer 3.png',
                                          width: 100,
                                        ),
                                      ),
                                      Positioned(
                                        top: 15.0,
                                        left: 0.0,
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
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 170,
                              left: 30.0,
                              child: Card(
                                elevation: 4.0,
                                margin:
                                    EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Container(
                                  height: 110,
                                  width: 330,
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35.0),
                                    color: Colors.white,
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
                                                  color: Colors.orange,
                                                  fontWeight: FontWeight.bold),
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
                                              '000000000000',
                                              style: TextStyle(
                                                color: Colors.grey,
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
                                              'شارع البطحاء - حي الغبيرة - الرياض',
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 300,
                              left: 30.0,
                              child: Card(
                                elevation: 4.0,
                                margin:
                                    EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  height: 50,
                                  width: 330,
                                  padding: EdgeInsets.all(0.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35.0),
                                    color: Colors.white,
                                  ),
                                  child: TabBar(
                                    labelColor: Colors.orangeAccent,
                                    unselectedLabelColor: Colors.white,
                                    indicator: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: Colors.orange),
                                      ),
                                    ),
                                    indicatorSize: TabBarIndicatorSize.label,
                                    tabs: [
                                      Tab(
                                        //text: 'الخدمات',
                                        child: ListTile(
                                            title: Text(
                                              'الخدمات',
                                              style: TextStyle(
                                                  fontFamily: 'Cairo'),
                                            ),
                                            trailing: Image.asset(
                                              './images/comment.png',
                                              width: 20.0,
                                            )),
                                      ),
                                      Tab(
                                        //text: 'الخدمات',
                                        child: ListTile(
                                            title: Text(
                                              'الخدمات',
                                              style: TextStyle(
                                                  fontFamily: 'Cairo'),
                                            ),
                                            trailing: Image.asset(
                                              './images/service.png',
                                              width: 20.0,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 370,
                              left: 30.0,
                              child: Container(
                                height: 380,
                                width: 330,
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.0),
                                  //color: Colors.white,
                                ),
                                child: TabBarView(
                                  children: [
                                    ListView.builder(
                                      itemCount: 10,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          //padding: EdgeInsets.only(bottom: 20.0),
                                          margin: EdgeInsets.only(bottom: 20.0),
                                          height: 100,
                                          decoration: BoxDecoration(
                                            //color: Colors.red,
                                            border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey),
                                            ),
                                          ),
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Text(
                                                    '3:00',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 0.0),
                                              ),
                                              Expanded(
                                                flex: 6,
                                                child: Container(
                                                  alignment: Alignment.topRight,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: <Widget>[
                                                          Text(
                                                            'أوامر الشبكة',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .orange,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: <Widget>[
                                                          Expanded(
                                                            child: Text(
                                                              'نص التعليق هو مثال لنص اخر سيتم تغييره',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize:
                                                                      13.0),
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 0.0),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  alignment: Alignment.topRight,
                                                  decoration: BoxDecoration(),
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Positioned(
                                                        child: Image.asset(
                                                          './images/Layer 3.png',
                                                          width: 80,
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
                                    ListView.builder(
                                      itemCount: 1,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          margin: EdgeInsets.only(bottom: 20.0),
                                          //decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.black)),
                                          child: Row(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.all(0.0),
                                                child: Container(
                                                  child: Image.asset(
                                                    './images/plus.png',
                                                    width: 20.0,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                    child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 20.0,
                                                  ),
                                                  child: Text(
                                                    '55 ريال',
                                                    style: TextStyle(
                                                        color: Colors.orange,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                )),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  child: Text(
                                                    'ورشه',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 16.0),
                                                    textAlign: TextAlign.right,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10.0),
                                                child: Container(
                                                  child: Image.asset(
                                                    './images/service_one.png',
                                                    width: 40.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
