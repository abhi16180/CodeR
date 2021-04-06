import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:text/fetch.dart';
import './pointer.dart';
import './structure.dart';
import './linkedlist.dart';
import './trees.dart';
import './searching.dart';
import './sorting.dart';
import './about.dart';

void main() => runApp(MaterialApp(
      home: AnimatedSplashScreen(
          splash: Image.asset(
            'Assets/loadingPage.png',
          ),
          duration: 2000,
          splashTransition: SplashTransition.fadeTransition,
          nextScreen: NewApp()),
      routes: {
        'home': (context) => NewApp(),
        'pointer': (context) => Pointer(),
        'structure': (context) => Structure(),
        'linkedlist': (context) => Linkedlist(),
        'trees': (context) => Trees(),
        'searching': (context) => Searching(),
        'sorting': (context) => Sorting(),
        'Fetch': (context) => Fetch(),
        'About': (context) => About(),
      },
    ));
List array = [
  'Pointers',
  'Structures',
  'LinkedLists',
  'Trees',
  'Searching',
  'Sorting'
];
String topic;

class NewApp extends StatefulWidget {
  NewApp({Key key}) : super(key: key);

  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  String data = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Image.asset(
              "Assets/iconfinder_menu-alt-2_7124120.png",
              height: 25,
              width: 44,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          'CodeR',
          style: TextStyle(fontFamily: 'googleSans'),
        ),
        elevation: 5.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Colors.cyan, Colors.lightGreenAccent],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: DrawerHeader(
          margin: EdgeInsets.all(30.0),
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'About',
                  style: TextStyle(
                      fontFamily: 'googleSans', fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'About');
                },
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.cyan, Colors.indigo]),
            borderRadius: BorderRadius.only(
              topRight: Radius.elliptical(1150, 1220),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(8.0, 6.0),
                blurRadius: 10.0,
              )
            ]),
        padding: EdgeInsets.only(top: 35.0),
        //Generating grid
        child: GridView.builder(
          itemCount: array.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int item) {
            return Container(
              height: 10.0,
              padding: EdgeInsets.all(20),
              child: Card(
                child: InkWell(
                  onTap: () {
                    switch (array[item]) {
                      case 'Pointers':
                        Navigator.pushNamed(context, 'pointer');
                        break;
                      case 'Structures':
                        topic = 'Structures';
                        Navigator.pushNamed(context, 'structure');
                        break;
                      case 'LinkedLists':
                        topic = 'LinkedLists';
                        Navigator.pushNamed(context, 'linkedlist');
                        break;
                      case 'Trees':
                        topic = 'Tress';
                        Navigator.pushNamed(context, 'trees');
                        break;
                      case 'Searching':
                        topic = 'Searching';
                        Navigator.pushNamed(context, 'searching');
                        break;
                      case 'Sorting':
                        topic = 'Sorting';
                        Navigator.pushNamed(context, 'sorting');
                        break;
                      default:
                        topic = '';
                    }
                  },
                  child: Center(
                    child: Text(
                      array[item],
                      style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                shadowColor: Colors.black,
                elevation: 10.0,
              ),
            );
          },
        ),
      ),
    );
  }
}
