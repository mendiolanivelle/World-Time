import 'package:flutter/material.dart';
import 'package:world_time/Services/World_Time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void setupWorldTime() async
  {
    WorldTime instance = WorldTime(location:'Manila',flag: 'Philippines',url: 'Asia/Manila');
    await instance.getTime();
    
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding
      (
        padding: EdgeInsets.all(20),
        child: Text
        (
          '$time'
        ),
      ),
      
    );
  }
}