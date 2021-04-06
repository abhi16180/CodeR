import 'package:flutter/material.dart';
import './fetch.dart';

List<String> topic = [
  'Inorder Traversal',
  'Preorder Traversal',
  'Postorder Traversal'
];

class Trees extends StatefulWidget {
  Trees({Key key}) : super(key: key);

  @override
  _TreesState createState() => _TreesState();
}

class _TreesState extends State<Trees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.red,
        title: Text(
          'Trees',
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
                      case 'Inorder Traversal':
                        path = 'Inorder Traversal';
                        break;
                      case 'Preorder Traversal':
                        path = 'Preorder Traversal';
                        break;
                      case 'Postorder Traversal':
                        path = 'Postorder Traversal';
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
