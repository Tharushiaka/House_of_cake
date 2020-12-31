import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/screens/customtetfield.dart';
import 'package:flutter1/screens/dialogscreens/error.dart';
import 'package:flutter1/screens/dialogscreens/loading.dart';
import 'package:flutter1/screens/loginscreeen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _firstname = TextEditingController();
  final TextEditingController _lastname = TextEditingController();
  final TextEditingController _emailaddress = TextEditingController();
  final TextEditingController _contactnumber = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.purple[700],
              Colors.purpleAccent[700],
              Colors.pink[200]
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
          child: Center(
              child: Column(children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Create an Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  CustumTextField(
                    controller: _firstname,
                    data: Icons.person,
                    hintText: 'First Name',
                    isObsecure: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustumTextField(
                    controller: _lastname,
                    data: Icons.person,
                    hintText: 'Last Name',
                    isObsecure: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustumTextField(
                    controller: _emailaddress,
                    data: Icons.email,
                    hintText: 'Email Address',
                    isObsecure: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustumTextField(
                    controller: _contactnumber,
                    data: Icons.phone,
                    hintText: 'Phone Number',
                    isObsecure: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustumTextField(
                    controller: _password,
                    data: Icons.person,
                    hintText: 'Password',
                    isObsecure: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustumTextField(
                    controller: _confirmpassword,
                    data: Icons.person,
                    hintText: 'Confirm Password',
                    isObsecure: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 75, right: 75),
                child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 40,
                  child: RaisedButton(
                      onPressed: () {
                        checkErrors();
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text('SIGNUP',
                          style: TextStyle(
                            color: Colors.purple[700],
                            fontSize: 20,
                          ))),
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Already User?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ]))),
    );
  }

  Future<void> checkErrors() async {
    String value;
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    print(value);

    if (_firstname.text == null ||
        _lastname.text == null ||
        _emailaddress.text == null ||
        _password.text == null ||
        _confirmpassword.text == null) {
      showDialog(
          context: context,
          builder: (c) {
            return ErrorAlert(
              message: 'Please fully complete the form before proceed',
            );
          });
    } else if (_password.text != _confirmpassword.text) {
      showDialog(
          context: context,
          builder: (c) {
            return ErrorAlert(
              message: 'Password does not match',
            );
          });
    } else if (!regExp.hasMatch(value)) {
      showDialog(
          context: context,
          builder: (c) {
            return ErrorAlert(
              message:
                  '* should contain at least one upper case \n * should contain at least one lower case \n * should contain at least one digit \n * should contain at least one Special character',
            );
          });
    } else {
      upLoadAndSave();
    }
  }

  upLoadAndSave() async {
    showDialog(
        context: context,
        builder: (c) {
          return LoadingAlert();
        });
  }
}
