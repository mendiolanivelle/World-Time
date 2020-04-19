import 'package:flutter/material.dart';

class Choose_Location extends StatefulWidget {
  @override
  _Choose_LocationState createState() => _Choose_LocationState();
}

class _Choose_LocationState extends State<Choose_Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar
      (
        backgroundColor: Colors.orange,
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Choose Location screen'),
    );
  }
}