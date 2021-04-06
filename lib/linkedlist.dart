import 'package:flutter/material.dart';
import './fetch.dart';

List<String> topic = [
  'Linked-list Operations(sll)',
  'Reversing singly Linked-list'
];

class Linkedlist extends StatefulWidget {
  Linkedlist({Key key}) : super(key: key);

  @override
  _LinkedlistState createState() => _LinkedlistState();
}

class _LinkedlistState extends State<Linkedlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.red,
        title: Text(
          'Linked_list',
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
                      case 'Linked-list Operations(sll)':
                        path = 'Linked-list Operations(sll)';
                        break;
                      case 'Reversing singly Linked-list':
                        path = 'Reversing singly Linked-list';
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
