import 'package:first_flutter_project/first_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Myclass());

class Myclass extends StatelessWidget {
  const Myclass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My flutter app",
      routes: <String, WidgetBuilder>{
        '/screen1': (BuildContext context) => SecondClass(),
        '/screen2': (BuildContext context) => SecondClass(),
        '/screen3': (BuildContext context) => SecondClass(),
        '/screen4': (BuildContext context) => SecondClass(),
      },
      home: Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          title: Center(child: Text('Titulo')),
          actions: <Widget>[Icon(Icons.settings)],
        ),
        body: SecondClass(),
      ),
    );
  }
}
