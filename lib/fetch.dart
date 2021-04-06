import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:clipboard_manager/clipboard_manager.dart';

String text = '';
String path = '';

class Fetch extends StatefulWidget {
  @override
  _FetchState createState() => _FetchState();
}

class _FetchState extends State<Fetch> {
  fetchFile() async {
    String resp = await rootBundle.loadString('texts/$path.txt');
    setState(() {
      text = resp;
    });
  }

  @override
  void initState() {
    fetchFile();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Icon(Icons.code),
            )
          ],
          shadowColor: Colors.red,
          title: Text(
            '$path',
            style: TextStyle(fontFamily: 'Josefin_Sans'),
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
        body: ListView(
          children: [
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: HighlightView(
                  text,
                  language: 'cpp',
                  theme: githubTheme,
                  padding: EdgeInsets.all(12),

                  // Specify text style
                  textStyle: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan,
          child: InkWell(
            child: Icon(Icons.copy),
            splashColor: Colors.cyan,
          ),
          onPressed: () {
            ClipboardManager.copyToClipBoard(text).then((result) {
              final snackBar = SnackBar(
                content: Text(
                  'Copied to Clipboard',
                  style: TextStyle(
                      fontFamily: 'Josefin_Sans', fontWeight: FontWeight.bold),
                ),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            });
          },
        ));
  }
}
