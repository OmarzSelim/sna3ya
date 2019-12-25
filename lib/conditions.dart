import 'dart:ui';
import 'package:flutter/material.dart';

class Conditions extends StatefulWidget {
  @override
  _ConditionsState createState() => _ConditionsState();
}

class _ConditionsState extends State<Conditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'شروط و أحكام',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 200),
            padding: EdgeInsets.fromLTRB(20.0, 40, 20.0, 40.0),
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
              ),
            ),
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            //color: Colors.red,
                            child: ListTile(
                              title: Text(
                                '-- الشروط و الأحكام الخاصه بصناعية',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                                //textAlign: TextAlign.center,
                                textDirection: TextDirection.rtl,
                              ),
                              subtitle: Padding(
                                padding:
                                    EdgeInsets.only(top: 10.0, right: 10.0),
                                child: Text(
                                  'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  textDirection: TextDirection.rtl,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Positioned(
            top: 0.0,
            left: 20.0,
            child: Image.asset(
              './images/conditions.png',
              width: 170,
            ),
          ),
        ],
      ),
    );
  }
}
