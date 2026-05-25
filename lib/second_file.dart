import 'dart:math';
import 'package:first_flutter_project/util.dart';
import 'package:flutter/material.dart';

class SecondClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Colors.yellow,
      child: Row(
        children: <Widget>[


      )
      Container(
        height: 500.0,
        width: 300.0,
        //  alignment: Alignment(0, 0),
        //  decoration: BoxDecoration(
        //    gradient: RadialGradient(
        //      colors: [Colors.green, Colors.blue, Colors.orange, Colors.pink],
        //      stops: [0.2, 0.5, 0.7, 1],
        //      center: Alignment(0.1, 0.3),
        //      focal: Alignment(-0.1, 0.6),
        //    ),
        //  ),
        color: lightPurpleColor,
        //  child: GestureDetector(
        //    onTap: () {
        //      Scaffold.of(context).showSnackBar(
        //        new SnackBar(
        //          content: new Text('It was pressed'),
        //          duration: Duration(seconds: 2),
        //        ),
        //      );
        //    },
        //  child: Text(
        //  generateNumbers(),
        //    textDirection: TextDirection.ltr,
        //    style: TextStyle(
        //      color: Colors.white,
        //      fontSize: 15.0,
        //      fontWeight: FontWeight.bold,
        //    ),
        //  ),
      ),
      Container(
        height: 500.0,
        width: 300.0,
        color: lightPurpleColor,
      )
    ),
    );
  }

  String generateNumbers() {
    var r = Random();
    int i = r.nextInt(20);
    return 'Un número aleatorio entre 0 y 20 es $i';
  }
}
