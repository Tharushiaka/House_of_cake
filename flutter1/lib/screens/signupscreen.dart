import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/screens/customtetfield.dart';
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
                    data: Icons.person,
                    hintText: 'Email Address',
                    isObsecure: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustumTextField(
                    controller: _contactnumber,
                    data: Icons.person,
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
                      onPressed: () {},
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
}
