import 'package:flutter/material.dart';
import 'package:world_time/Services/World_Time.dart';

class Choose_Location extends StatefulWidget {
  @override
  _Choose_LocationState createState() => _Choose_LocationState();
}

class _Choose_LocationState extends State<Choose_Location> {

  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    print('Init state function build');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar
      (
        backgroundColor: Colors.indigo,
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      
      body: ListView.builder
      (
        itemCount: locations.length,
        itemBuilder: (context,index)
        {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 4),
            child: Card
            (
              child: ListTile
              (
                onTap: () {},
                title: Text
                (
                  locations[index].location,
                ),
                leading: CircleAvatar
                (
                  backgroundImage: AssetImage('asset/img/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}