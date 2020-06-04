import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),

              //Name and title
              Container(
                child: Text(
                  "Rain Chai",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ),
              Text(
                'FULLSTACK DEVELOPER',
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  letterSpacing: 2.5,
                  fontSize: 12,
                ),
              ),

              // spacer
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 1,
                width: 150,
                color: Colors.grey,
              ),

              //Cards
              Phone(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                      ),
                      title: Text("rainchai4240@gmail.com"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Phone extends Card {
  final String number = '+60 177098867';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(
              Icons.phone,
            ),
            title: Text(number),
          ),
        ),
      ),
    );
  }
}
