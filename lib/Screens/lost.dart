import 'package:flutter/material.dart';
import 'package:travel_insurance/Screens/map.dart';
import 'package:travel_insurance/Screens/map2.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const MapScreen();
                }));
              },
              child: Text('Map')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const CurrentLocation();
                }));
              },
              child: Text('Map2'))
        ],
      ),
    );
  }
}
