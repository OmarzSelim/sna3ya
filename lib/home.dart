import 'package:flutter/material.dart';
import 'package:sna3ya_user/adv_search.dart';
import 'package:sna3ya_user/helpers/menu.dart';
//import 'dart:async';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'الرئيسية',
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
        //centerTitle: true,
        leading: Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: CircleAvatar(
            child: Image.asset('./images/Layer 3.png'),
          ),
        ),
        actions: <Widget>[Menu()],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(50.0),
                topRight: const Radius.circular(50.0),
                bottomLeft: const Radius.circular(30.0),
                bottomRight: const Radius.circular(0.0),
              ),
            ),
          ),
          Positioned(
            top: 70.0,
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
                    //border: Border.all(color: Colors.grey),
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
