import 'package:flutter/material.dart';
import './fetch.dart';

List<String> topic = ['Linear Search', 'Binary Search', 'Interpolation Search'];

class Searching extends StatefulWidget {
  Searching({Key key}) : super(key: key);

  @override
  _SearchingState createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.red,
        title: Text(
          'Searching',
          style: TextStyle(
              fontFamily: 'Josefin_Sans', fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [Colors.cyan, Colors.indigo],
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.elliptical(40, 80),
              )),
        ),
        elevation: 6.0,
      ),
      body: Container(
          child: ListView.builder(
        itemCount: topic.length,
        itemBuilder: (BuildContext context, int item) {
          return Container(
            height: 80.0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: InkWell(
                splashColor: Colors.black,
                onTap: () {
                  setState(() {
                    switch (topic[item]) {
                      case 'Linear Search':
                        path = 'Linear Search';
                        break;
                      case 'Binary Search':
                        path = 'Binary Search';
                        break;
                      case 'Interpolation Search':
                        path = 'Interpolation Search';
                        break;
                    }
                  });
                  Navigator.pushNamed(context, 'Fetch');
                },
                child: Center(
                  child: Text(
                    topic[item],
                    style: TextStyle(fontFamily: 'ProductSans'),
                  ),
                ),
              ),
            ),
          );
        },
      )),
    );
  }
}
