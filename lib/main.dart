import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var primaryColor = Colors.teal[700];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/personal_picture.jpg"),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Fran Márquez",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                  fontSize: 32.0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Source Sans Pro",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.teal[100].withAlpha(230),
                height: 1,
                margin: EdgeInsets.symmetric(horizontal: 160),
              ),
              SizedBox(
                height: 20,
              ),
              TextCard(
                primaryColor: primaryColor,
                icon: Icon(
                  Icons.phone,
                  color: primaryColor,
                ),
                text: "+34 605 371 174",
              ),
              SizedBox(
                height: 20,
              ),
              TextCard(
                primaryColor: primaryColor,
                icon: Icon(
                  Icons.mail,
                  color: primaryColor,
                ),
                text: "fran29400@gmail.com",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  const TextCard({
    Key key,
    @required this.primaryColor,
    @required this.icon,
    @required this.text,
  }) : super(key: key);

  final Color primaryColor;
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: icon,
          ),
          Container(
            margin: EdgeInsets.only(left: 50),
            child: Text(
              text,
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                fontFamily: "Source Sans Pro",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
