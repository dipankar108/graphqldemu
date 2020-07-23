import 'package:flutter/material.dart';
import 'package:graphqldemu/Countries.dart';
import 'package:graphqldemu/countryNameModel.dart';

class HomePage extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  CountryNameModel countryNameModel;

  @override
  Widget build(BuildContext context) {
    List<Countries> countryname = countryNameModel.countryname;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GraphQl Demu Created by Dipankar Debnath'),
        ),
        body: Center(
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  countryname.toString(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
