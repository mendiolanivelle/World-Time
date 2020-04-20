import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async  
  {
    Response response = await get('http://worldtimeapi.org/api/timezone/Asia/Manila');
    Map data = jsonDecode(response.body);
    //print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].toString().substring(1,3);

    DateTime currentTime = DateTime.parse(datetime);
    currentTime = currentTime.add(Duration(hours: int.parse(offset)));
    print(currentTime);
  }

  @override
  void initState() {
    super.initState();
    print('Init state function run');
    getTime();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading screen'),
      
    );
  }
}