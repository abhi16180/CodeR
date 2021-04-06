import 'package:flutter/material.dart';
import './fetch.dart';

List<String> topic = [
  'Merge Sort',
  'Insertion Sort',
  'Radix Sort',
  'Heap Sort'
];

class Sorting extends StatefulWidget {
  Sorting({Key key}) : super(key: key);

  @override
  _SortingState createState() => _SortingState();
}

class _SortingState extends State<Sorting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.red,
        title: Text(
          'Sorting',
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
                      case 'Merge Sort':
                        path = 'Merge Sort';
                        break;
                      case 'Insertion Sort':
                        path = 'Insertion Sort';
                        break;
                      case 'Radix Sort':
                        path = 'Radix Sort';
                        break;
                      case 'Heap Sort':
                        path = 'Heap Sort';
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
