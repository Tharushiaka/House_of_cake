import 'package:flutter/material.dart';

class CustumTextField extends StatelessWidget {
  final TextEditingController controller;
  final IconData data;
  final String hintText;
  bool isObsecure = true;

  CustumTextField(
      {Key key, this.controller, this.data, this.hintText, this.isObsecure})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        padding: EdgeInsets.only(left: 25, right: 25),
        child: TextFormField(
          controller: controller,
          obscureText: isObsecure,
          cursorColor: Colors.white,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.transparent)),
            prefixIcon: Icon(
              data,
              color: Colors.white,
            ),
            focusColor: Colors.transparent,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 18,
              letterSpacing: 1.5,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            filled: true,
            fillColor: Colors.white.withOpacity(.3),
          ),
        ));
  }
}
