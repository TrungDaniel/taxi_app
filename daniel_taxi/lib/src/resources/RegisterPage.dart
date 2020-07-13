import 'package:flutter/material.dart';

void main() {
  runApp(RegisterPage());
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.lightBlue),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image.asset('ic_card_red.png'),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                child: Text(
                  'Welcome Aboard!',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text('Signup with daniel car in simple steps'),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Container(
                      width: 50,
                      child: Image.asset('mail.png'),
                    ),
                    labelText: 'as',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
