import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/service_rate.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List items = swipeToDelete();
  static List swipeToDelete() {
    List list = List.generate(100, (i) {
      return "Item ${i + 1}";
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'الاشعارات',
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
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
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(items[index]),
                  background: Container(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0),
                    alignment: Alignment.topLeft,
                    child: ImageIcon(
                      AssetImage('./images/delete.png'),
                    ),
                  ),
                  direction: DismissDirection.startToEnd,
                  onDismissed: (direction) {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          " تم حذف الاشعار",
                          textAlign: TextAlign.right,
                        ),
                      ),
                    );
                    setState(() {
                      items.removeAt(index);
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ServiceRate(),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(5.0),
                                margin: EdgeInsets.only(bottom: 30.0),
                                alignment: Alignment.topRight,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            alignment: Alignment.bottomLeft,
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  '3:00',
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 9,
                                          child: Container(
                                            child: Column(
                                              children: <Widget>[
                                                Text(
                                                  'تم الانتهاء من طلبك يرجى تقييم مقدم الخدمة',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  border: Border(
                                    right: BorderSide(
                                      width: 15.0,
                                      color: Colors.orange,
                                    ),
                                    top: BorderSide(
                                      width: 1.0,
                                      color: Colors.orange,
                                    ),
                                    left: BorderSide(
                                      width: 1.0,
                                      color: Colors.orange,
                                    ),
                                    bottom: BorderSide(
                                      width: 1.0,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
