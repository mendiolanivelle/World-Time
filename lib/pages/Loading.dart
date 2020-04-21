import 'package:flutter/material.dart';
import 'package:world_time/Services/World_Time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setupWorldTime() async
  {
    WorldTime instance = WorldTime(location:'Manila',flag: 'Philippines',url: 'Asia/Manila');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: 
    {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime' : instance.isDayTime,
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
      body: Center
      (
        child: SpinKitPulse(color: Colors.black,size: 200),
      )

    );
  }
}