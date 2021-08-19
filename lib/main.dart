import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:major_project/login.dart';
import 'package:major_project/signup.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "To the major project done by Aswarth Reddy as a part of internship in Verzio",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[700], fontSize: 15),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.lightGreen,
                        blurRadius: 10.0,
                      ),
                    ],
                    image: DecorationImage(
                        image: AssetImage('images/p2.png'),
                        colorFilter: ColorFilter.mode(
                            Colors.white, BlendMode.multiply))),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateAccount()));
                      },
                      color: Colors.limeAccent[700],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
