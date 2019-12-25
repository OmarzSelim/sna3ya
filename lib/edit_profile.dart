import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sna3ya_user/helpers/textfied.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _mobileNumberController = new TextEditingController();
  List<String> _countries = [
    'الرياض',
    'المدينة المنوره',
    'مكة المكرمة',
    'جدة',
    'الدمام'
  ];
  String _currentItemSelected = 'الرياض';
  Color color;
  FocusNode _focusNode = FocusNode();
  FocusNode _secondFocusNode = FocusNode();

  /*int selectedRadioTile = 1;
  setSelectedRadio(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }*/

  void _showModalSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (builder) {
        return Container(
          padding: EdgeInsets.all(40.0),
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(50.0),
              topRight: const Radius.circular(50.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              RadioButtonGroup(
                activeColor: Colors.orangeAccent,
                labelStyle: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
                labels: _countries,
                onSelected: (String selected) {
                  print(selected);
                  setState(() {
                    _currentItemSelected = selected;
                  });
                },
              )
            ],
          ),
        );
      },
    );
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
          'تعديل حسابي',
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
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
            ),
            Positioned(
              top: 55.0,
              left: 145,
              child: Container(
                child: Image.asset(
                  './images/Layer 3.png',
                  width: 110,
                ),
              ),
            ),
            Positioned(
              top: 50.0,
              left: 140,
              child: Container(
                child: Image.asset(
                  './images/frame.png',
                  width: 120,
                ),
              ),
            ),
            Positioned(
              top: 200,
              right: 40.0,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 30.0),
                        width: 350,
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
                        child: textFieldConst(
                          secure: false,
                          focusNode: _focusNode,
                          labelText: 'أوامر الشبكة',
                          controller: _nameController,
                          textStyle: TextStyle(
                              fontSize: 13.0,
                              color: _focusNode.hasFocus
                                  ? Colors.orange
                                  : Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 30.0),
                        width: 350,
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
                        child: textFieldConst(
                          secure: false,
                          focusNode: _secondFocusNode,
                          labelText: 'رقم الجوال',
                          controller: _mobileNumberController,
                          keyboardType: TextInputType.number,
                          textStyle: TextStyle(
                              fontSize: 13.0,
                              color: _secondFocusNode.hasFocus
                                  ? Colors.orange
                                  : Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      InkWell(
                        onTap: _showModalSheet,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 30.0),
                          width: 300,
                          alignment: Alignment.topRight,
                          child: ListTile(
                              title: Text(
                                '$_currentItemSelected',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 14.0),
                              ),
                              leading: Icon(Icons.keyboard_arrow_down)
                              /*Container(
                            alignment: Alignment.topLeft,
                            width: 120,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              icon: Icon(Icons.keyboard_arrow_down),
                              items:
                                  _countries.map((String dropDownStringItem) {
                                return DropdownMenuItem<String>(
                                  value: dropDownStringItem,
                                  child: Text(dropDownStringItem),
                                );
                              }).toList(),
                              onChanged: (String newValueSelected) {
                                setState(() {
                                  this._currentItemSelected = newValueSelected;
                                });
                              },
                              //value: _currentItemSelected,
                            ),
                          ),*/
                              ),
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                width: 15.0,
                                color: Colors.black87,
                              ),
                              top: BorderSide(
                                width: 1.0,
                                color: Colors.black87,
                              ),
                              left: BorderSide(
                                width: 1.0,
                                color: Colors.black87,
                              ),
                              bottom: BorderSide(
                                width: 1.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 300,
                        margin: EdgeInsets.only(bottom: 30.0),
                        alignment: Alignment.topRight,
                        child: ListTile(
                          title: Text(
                            'الرياض - شارع التخصصي',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 14.0),
                          ),
                          leading: Icon(Icons.gps_fixed),
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              width: 15.0,
                              color: Colors.black87,
                            ),
                            top: BorderSide(
                              width: 1.0,
                              color: Colors.black87,
                            ),
                            left: BorderSide(
                              width: 1.0,
                              color: Colors.black87,
                            ),
                            bottom: BorderSide(
                              width: 1.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 350,
                        padding: EdgeInsets.only(right: 30.0, left: 30.0),
                        child: MaterialButton(
                          height: 50.0,
                          color: Colors.orange,
                          child: Text(
                            'تأكيد',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
