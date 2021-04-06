import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(
              fontFamily: 'Josefin_Sans',
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topCenter,
            colors: [Colors.cyan, Colors.greenAccent],
          )),
        ),
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
            child: RichText(
          text: TextSpan(
            text: 'App By Abhilash Hegde\n',
            style: TextStyle(
                fontFamily: 'FiraCode',
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.italic,
                color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: 'Made with\n',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'googleSans',
                    fontStyle: FontStyle.normal,
                    color: Colors.black),
              ),
              TextSpan(
                text: 'FLUTTER !',
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
