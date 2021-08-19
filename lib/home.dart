import 'package:major_project/demo.dart';
import 'package:major_project/main.dart';
import 'package:flutter/material.dart';
import 'package:major_project/profile.dart';
import 'package:major_project/payment.dart';
import 'package:major_project/quizpage.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Text('Quiz App'),
        ),
        drawer: Drawer(
          child: Column(
            // Important: Remove any padding from the ListView.
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 130,
                color: Colors.lightBlue[900],
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text("  "),
                    Text("  "),
                    Text(
                      '9879876532',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Spacer(),
                    IconButton(
                      color: Colors.white,
                      iconSize: 40,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return second();
                        }));
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.menu),
                title: Text('Order History'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.support),
                title: Text('Help & support'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.update),
                title: Text('Updates'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () => _showMessageDialog(context),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              // even space distribution
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: 1000,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/p4.png"))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      minWidth: 150,
                      height: 40,
                      child: Text(
                        'Play Quiz',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return QuizPage();
                        }));
                      },
                      color: Colors.lightBlue[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ],
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 45,
                  child: Text(
                    'To Donate...',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  },
                  color: Colors.pinkAccent.shade200,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
        ));
  }
}

_showMessageDialog(BuildContext context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
          title: Text('Alert!!!'),
          content: Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
            )
          ],
        ));
