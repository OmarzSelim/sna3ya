import 'package:flutter/material.dart';
import 'package:sna3ya_user/about_app.dart';
import 'package:sna3ya_user/conditions.dart';
import 'package:sna3ya_user/contacts.dart';
import 'package:sna3ya_user/login.dart';
import 'package:sna3ya_user/notifications.dart';
import 'package:sna3ya_user/questions.dart';
import 'package:sna3ya_user/reservations.dart';
import 'package:sna3ya_user/sections.dart';
import 'package:sna3ya_user/settings.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Notifications(),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: ImageIcon(
                AssetImage('./images/notification.png'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showGeneralDialog(
                barrierDismissible: false,
                barrierColor: Colors.black,
                transitionDuration: const Duration(milliseconds: 200),
                context: context,
                pageBuilder: (BuildContext context, Animation animation,
                    Animation secondAnimation) {
                  return Material(
                    color: Colors.transparent,
                    child: Container(
                      margin: EdgeInsets.all(20.0),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: Container(
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 30.0,
                              left: 0.0,
                              child: Container(
                                child: InkWell(
                                  onTap: () => Navigator.pop(context),
                                  child: Image.asset(
                                    './images/close.png',
                                    width: 25.0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0.0,
                              child: Container(
                                height: 670,
                                width: 70.0,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: new BorderRadius.only(
                                    bottomLeft: const Radius.circular(30.0),
                                    bottomRight: const Radius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 20.0,
                              right: 0.0,
                              child: Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.black,
                                  image: DecorationImage(
                                    image: AssetImage('./images/Layer 3.png'),
                                    alignment: Alignment.topRight,
                                  ),
                                  borderRadius: new BorderRadius.only(
                                    topLeft: const Radius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 50.0,
                              right: 120,
                              child: Text(
                                'أوامر الشبكة',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 160,
                              right: 10.0,
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () => Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Notifications(),
                                          ),
                                        ),
                                        child: Container(
                                          width: 300,
                                          child: ListTile(
                                            title: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 30.0),
                                              child: Text(
                                                'الرئيسية',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Colors.orangeAccent,
                                                  fontSize: 17.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            trailing: ImageIcon(
                                              AssetImage('./images/home.png'),
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 210,
                              right: 10.0,
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Sections(),
                                      ),
                                    ),
                                    child: Container(
                                      width: 300,
                                      child: ListTile(
                                        title: Padding(
                                          padding: EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            'الأقسام',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        trailing: ImageIcon(
                                          AssetImage('./images/category.png'),
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 260,
                              right: 10.0,
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Reservations(),
                                      ),
                                    ),
                                    child: Container(
                                      width: 300,
                                      child: ListTile(
                                        title: Padding(
                                          padding: EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            'الحجوزات',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        trailing: ImageIcon(
                                          AssetImage('./images/file.png'),
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 310,
                              right: 10.0,
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => AboutApp(),
                                      ),
                                    ),
                                    child: Container(
                                      width: 300,
                                      child: ListTile(
                                        title: Padding(
                                          padding: EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            'عن التطبيق',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        trailing: ImageIcon(
                                          AssetImage('./images/about_app.png'),
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 360,
                              right: 10.0,
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Questions(),
                                      ),
                                    ),
                                    child: Container(
                                      width: 300,
                                      child: ListTile(
                                        title: Padding(
                                          padding: EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            'أسئلة متكررة',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        trailing: ImageIcon(
                                          AssetImage('./images/question.png'),
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 410,
                              right: 10.0,
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Conditions(),
                                      ),
                                    ),
                                    child: Container(
                                      width: 300,
                                      child: ListTile(
                                        title: Padding(
                                          padding: EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            'شروط و أحكام',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        trailing: ImageIcon(
                                          AssetImage('./images/locked.png'),
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 460,
                              right: 10.0,
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Settings(),
                                      ),
                                    ),
                                    child: Container(
                                      width: 300,
                                      child: ListTile(
                                        title: Padding(
                                          padding: EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            'الاعدادات',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        trailing: ImageIcon(
                                          AssetImage('./images/settings.png'),
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 510,
                              right: 10.0,
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Contacts(),
                                      ),
                                    ),
                                    child: Container(
                                      width: 300,
                                      child: ListTile(
                                        title: Padding(
                                          padding: EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            'تواصل معنا',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        trailing: ImageIcon(
                                          AssetImage('./images/contact.png'),
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 560,
                              right: 10.0,
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Login(),
                                      ),
                                    ),
                                    child: Container(
                                      width: 300,
                                      child: ListTile(
                                        title: Padding(
                                          padding: EdgeInsets.only(right: 30.0),
                                          child: Text(
                                            'تسجيل الخروج',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Colors.orangeAccent,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        trailing: ImageIcon(
                                          AssetImage('./images/logout.png'),
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
            child: ImageIcon(AssetImage('./images/menu.png')),
          ),
        ],
      ),
    );
  }
}
