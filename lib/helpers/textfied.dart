import 'package:flutter/material.dart';

Widget textFieldConst({
  String labelText,
  FocusNode focusNode,
  TextEditingController controller,
  Icon iconData,
  bool secure,
  TextInputType keyboardType,
  TextStyle textStyle,
}) {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: TextFormField(
      obscureText: secure,
      focusNode: focusNode,
      keyboardType: keyboardType,
      textAlign: TextAlign.right,
      style: TextStyle(color: Colors.black, height: 1.0),
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: iconData,
        labelStyle: textStyle,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.orange,
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(),
        labelText: labelText,
      ),
    ),
  );
}
