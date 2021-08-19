import 'package:major_project/profile.dart';
import 'package:flutter/material.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  _thirdState createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Add Address'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Full Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "House no/Building name*",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Locality',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'City',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Pincode',
              ),
            ),
          ),
          SizedBox(height: 180),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              height: 50,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return second();
                }));
              },
              color: Colors.grey,
              child: Text(
                "ADD ADDRESS",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
