import 'dart:math';

import 'package:flutter/material.dart';

class SecondClass extends StatefulWidget {
  const SecondClass({super.key});

  @override
  _SecondClassState createState() => new _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {
  String maritalStatus = 'Single';
  bool termsChecked = true;

  List<String> locations = ['A', 'B', 'C', 'D'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: Center(child: Text('Titulo')),
        actions: <Widget>[Icon(Icons.settings)],
      ),
      body: Material(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Dog'),
              subtitle: Text('Esto es un animal'),
              trailing: Icon(Icons.access_time),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Cat'),
              subtitle: Text('Esto es un animal'),
              trailing: Icon(Icons.access_time),
            ),
            Padding(child: Text('Dog'), padding: EdgeInsetsGeometry.all(10.0)),
            Container(
              child: Text('Cat'),
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              color: Colors.green,
              padding: EdgeInsets.only(top: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}

String generateNumbers() {
  var r = Random();
  int i = r.nextInt(20);

  return 'Un numero aleatorio entre 0 y 20 $i';
}
