import 'package:flutter/material.dart';
import './fetch.dart';

List<String> pointerTopic = ['Swapping two Numbers', 'Arrays using Pointer'];

class Pointer extends StatefulWidget {
  @override
  _PointerState createState() => _PointerState();
}

class _PointerState extends State<Pointer> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.red,
        title: Text(
          'Pointer',
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
        itemCount: pointerTopic.length,
        itemBuilder: (BuildContext context, int item) {
          return Container(
            height: 100.0,
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
                    switch (pointerTopic[item]) {
                      case 'Swapping two Numbers':
                        path = 'Swapping two Numbers';
                        break;
                      case 'Arrays using Pointer':
                        path = 'Arrays using Pointer';
                        break;
                    }
                  });
                  Navigator.pushNamed(context, 'Fetch');
                },
                child: Center(
                  child: Text(
                    pointerTopic[item],
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
