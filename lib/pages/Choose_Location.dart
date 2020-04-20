import 'package:flutter/material.dart';

class Choose_Location extends StatefulWidget {
  @override
  _Choose_LocationState createState() => _Choose_LocationState();
}

class _Choose_LocationState extends State<Choose_Location> {

  int counter = 0;
  String name = 'Nivelle Mendiola';
  String register = 'No';

  @override
  Widget build(BuildContext context) {
    print('Init state function build');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar
      (
        backgroundColor: Colors.orange,
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column
      (
        children: <Widget>
        [
          Text('$name'),
          RaisedButton
          (
            onPressed: () 
            {
              setState(() {
                counter++;
              });
            },
            child: Text('the counter is : $counter'),
          ),
          Text('$register'),
        ],
      ),
    );
  }
}