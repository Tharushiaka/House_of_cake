import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/screens/customtetfield.dart';
import 'package:flutter1/screens/signupscreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _password = TextEditingController();
  final TextEditingController _username = TextEditingController();
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
              height: 120,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Welcome to HOUSE OF CAKE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  CustumTextField(
                    controller: _username,
                    data: Icons.person,
                    hintText: 'Username',
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
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
              SizedBox(
                width: 30,
              ),
            ]),
            SizedBox(
              height: 40,
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
                      child: Text('LOGIN',
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
                  'Create an Account?',
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: Text(
                    'SignUp',
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
