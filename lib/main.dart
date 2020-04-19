import 'package:flutter/material.dart';
import 'package:world_time/pages/Choose_Location.dart';
import 'package:world_time/pages/Loading.dart';
import 'package:world_time/pages/home.dart';

void main() => runApp(MaterialApp
(
  initialRoute: '/home',
  routes:
  {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => Choose_Location()
  },
));
