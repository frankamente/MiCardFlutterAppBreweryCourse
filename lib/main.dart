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
                  fontSize: 32.0,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  color: Colors.teal[100].withAlpha(230),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Rock Salt",
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
                icon: Icon(
                  Icons.phone,
                  color: primaryColor,
                ),
                text: Text(
                  "+34 605 371 174",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextCard(
                icon: Icon(
                  Icons.mail,
                  color: primaryColor,
                ),
                text: Text(
                  "fran29400@gmail.com",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
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

class TextCard extends StatelessWidget {
  const TextCard({
    Key key,
    @required this.icon,
    @required this.text,
  }) : super(key: key);

  final Icon icon;
  final Text text;

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
            child: text,
          )
        ],
      ),
    );
  }
}
