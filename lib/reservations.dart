import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/helpers/order.dart';
import 'package:sna3ya_user/order_details.dart';

class Reservations extends StatefulWidget {
  @override
  _ReservationsState createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        //automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        //leading: Icon(Icons.arrow_back),
        title: Text(
          'الحجوزات',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                height: 736,
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.all(40.0),
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                  color: Colors.black,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  ),
                ),
              ),
              Positioned(
                top: 45.0,
                left: 40.0,
                child: Container(
                  width: 330,
                  padding: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                  ),
                  child: TabBar(
                    labelColor: Colors.orangeAccent,
                    unselectedLabelColor: Colors.white,
                    indicator: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.orange,
                          width: 2.0,
                        ),
                      ),
                    ),
                    unselectedLabelStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(
                      color: Colors.orangeAccent,
                      //fontFamily: 'Cairo',
                    ),
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(
                        child: Text(
                          'الحجوزات المنتهية',
                          style: TextStyle(fontFamily: 'Cairo'),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'الحجوزات الحالية',
                          style: TextStyle(fontFamily: 'Cairo'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 100,
                child: Container(
                  height: 736,
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
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => OrderDetails(),
                              ),
                            ),
                            child: OrderWidget()
                          );
                        },
                      ),
                      ListView.builder(
                        itemCount: 100,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => OrderDetails(),
                              ),
                            ),
                            child: OrderWidget()
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
      ),
    );
  }
}
