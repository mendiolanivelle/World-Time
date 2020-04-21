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
    String background = data['isDayTime'] ? 'day.jpg' : 'night.jpg';
    Color bg = data['isDayTime'] ? Colors.lightBlue : Colors.indigo;

    return Scaffold(
      backgroundColor: bg,
      body: SafeArea
      (
        child: Container(
          decoration: BoxDecoration
          (
            image: DecorationImage
            (
              image: AssetImage('asset/img/$background'),
              fit: BoxFit.cover
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
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
                  icon: Icon(Icons.edit_location,color: Colors.lightBlue,), 
                  label: Text('edit location',style: TextStyle(color: Colors.lightBlue),)
                ),
                SizedBox(height: 20,),
                Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>
                  [
                    Text
                    (
                      location,
                      style: TextStyle
                      (
                        color: Colors.white,
                        fontSize: 34,
                        letterSpacing: 2
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Text(time,style: TextStyle
                (
                  color: Colors.white,
                  fontSize: 80,
                  letterSpacing: 2,
                ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}