import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/adv_search.dart';
import 'package:sna3ya_user/services.dart';

class Sections extends StatefulWidget {
  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'الأقسام',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
        //leading: Icon(Icons.keyboard_arrow_left),
        actions: <Widget>[
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AdvancedSearch(),
              ),
            ),
            child: Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: ImageIcon(AssetImage('./images/search.png')),
          ),
          ),
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
                return Card(
                  color: Colors.white,
                  elevation: 3.0,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Services(),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
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
                            padding: EdgeInsets.only(left: 20.0),
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
