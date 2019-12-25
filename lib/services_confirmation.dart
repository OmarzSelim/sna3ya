import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/bottom_navigation_bar.dart';
import 'package:sna3ya_user/confirm_reservation.dart';

class ServicesConfirmation extends StatefulWidget {
  @override
  _ServicesConfirmationState createState() => _ServicesConfirmationState();
}

class _ServicesConfirmationState extends State<ServicesConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'تأكيد الخدمات',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
        leading: Icon(Icons.chevron_left),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            //height: 1000,
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
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'اجمالي الخددمات التي تم حجزها تبلغ 220 ريال',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          'مع العلم ان الدفع سيكون في الورشة',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                        ),
                      )),
                    ]),
                Container(
                  padding: EdgeInsets.only(top: 30.0),
                  height: 330,
                  child: ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white,
                        elevation: 2.0,
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Container(
                          height: 60,
                          width: 330,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            //color: Colors.white,
                          ),
                          child: Row(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(0.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {});
                                    },
                                    child: Container(
                                      child: Image.asset(
                                        './images/minus.png',
                                        width: 20.0,
                                      ),
                                    ),
                                  )),
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
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    'ورشه',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16.0),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Container(
                                  child: Image.asset(
                                    './images/service_one.png',
                                    width: 40.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: MaterialButton(
                          padding: EdgeInsets.all(15.0),
                          color: Colors.orangeAccent,
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => ConfirmReservation())),
                          child: Text(
                            'تأكيد',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10.0, right: 10.0),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              width: 12.0,
                              color: Colors.black,
                            ),
                            top: BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            left: BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                            bottom: BorderSide(
                              width: 1.0,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        child: MaterialButton(
                          padding: EdgeInsets.all(15.0),
                          //color: Colors.orangeAccent,
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      BottomNavigationBarInfo())),
                          child: Text(
                            'الغاء',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
