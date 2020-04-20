import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  
    Map data = {};



  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    String time = data['time'];
    String location = data['location'];
    String flag = data['flag'];

    return Scaffold(
      body: SafeArea
      (
        child: Column
        (
          children: <Widget>
          [
            FlatButton.icon
            (
              onPressed: () 
              {
                Navigator.pushNamed(context, '/location');
              }, 
              icon: Icon(Icons.edit_location), 
              label: Text('edit location')
            ),
            Text('$time'),
            Text('$location'),
            Text('$flag'),
          ],
        ),
      ),

    );
  }
}