import 'package:flutter/material.dart';
import 'package:sna3ya_user/sign_up.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 300),
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(50.0),
                  topRight: const Radius.circular(50.0),
                ),
              ),
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              //color: Colors.red,
                              child: ListTile(
                                title: Text(
                                  '-- الشروط و الأحكام',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              //color: Colors.red,
                              child: ListTile(
                                title: Text(
                                  '-- الشروط و الأحكام',
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
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 40.0, right: 40.0, top: 20.0),
                              child: MaterialButton(
                                padding: EdgeInsets.all(12.0),
                                color: Colors.orangeAccent,
                                onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        SignIn(),
                                  ),
                                ),
                                child: Text('موافقة'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              )),
          Positioned(
            top: 20.0,
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Image.asset(
                        './images/terms.png',
                        width: 200,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 50.0),
                      child: Text(
                        'شروط و أحكام',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 280,
            right: 50.0,
            child: Image.asset(
              './images/checked.png',
              width: 40.0,
            ),
          ),
        ],
      ),
    );
  }
}
