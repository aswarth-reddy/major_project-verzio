import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:major_project/address.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Account'),
        ),
        body: Column(
          children: [
            Center(
              child: Icon(
                Icons.account_circle,
                color: Colors.green,
                size: 100,
              ),
            ),
            Text(
              '9879876532',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: "Your Name",
                  suffixIcon: Icon(Icons.edit),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Email",
                  suffixIcon: Icon(Icons.edit),
                ),
              ),
            ),
            OutlinedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return third();
                  }));
                },
                child: const Text('ADD ADDRESS',
                    style: TextStyle(
                      color: Colors.green,
                    ))),
          ],
        ));
  }
}
