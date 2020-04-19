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
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100.withAlpha(230),
                  height: 1,
                ),
              ),
              TextCard(
                primaryColor: primaryColor,
                icon: Icons.phone,
                text: '+34 605 371 174',
              ),
              TextCard(
                primaryColor: primaryColor,
                icon: Icons.email,
                text: 'fran29400@gmail.com',
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
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListTile(
        leading: Icon(
          icon,
          color: primaryColor,
        ),
        title: Text(
          text,
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: "Source Sans Pro",
          ),
        ),
      ),
    );
  }
}
