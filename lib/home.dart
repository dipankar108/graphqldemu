import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GraphQl Demu Created by Dipankar Debnath'),
        ),
        body: Center(
          child: Text('Loading ...'),
        ),
      ),
    );
  }
}
