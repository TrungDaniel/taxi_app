import 'package:daniel_taxi/src/resources/RegisterPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 110,
                ),
                Image.asset('ic_card_green.png'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text('Welcome back!',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text('Login to continue using Daniel Car'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 50,
                        child: Image.asset('mail.png'),
                      ),
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 50,
                        child: Image.asset('lock.png'),
                      ),
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black12, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                ),
                Container(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.black54, fontSize: 14),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: SizedBox(
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        textColor: Colors.white,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: RichText(
                      text: TextSpan(
                          text: 'New user? ',
                          style: TextStyle(color: Colors.black54, fontSize: 16),
                          children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()));
                              },
                            text: 'Sign up for a new account',
                            style: TextStyle(color: Colors.blue))
                      ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
