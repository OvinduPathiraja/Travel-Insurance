import 'package:flutter/material.dart';
import 'package:travel_insurance/Screens/AccidentForm.dart';
import 'package:travel_insurance/Screens/map2.dart';
import 'package:travel_insurance/Screens/medical.dart';
import 'package:travel_insurance/Text/Heading1.dart';

class Type extends StatefulWidget {
  const Type({super.key});

  @override
  State<Type> createState() => _TypeState();
}

class _TypeState extends State<Type> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: w,
            child: Column(
              children: [
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hospital()),
                      );
                    },
                    child: Container(
                      width: w * 0.6,
                      margin: EdgeInsets.only(top: 20, bottom: 30),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/doctor.png", // Set the desired width
                            height: h * 0.225, // Set the desired height
                            // fit: BoxFit.contain, // Uncomment this if needed to fit the image within the specified dimensions
                          ),
                          Text(
                            "Medical Insurance",
                            style: TextStyle(
                                fontSize: 27.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Accident()),
                      );
                    },
                    child: Container(
                      width: w * 0.6,
                      margin: EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/accident.png", // Set the desired width
                            height: h * 0.225, // Set the desired height
                            // fit: BoxFit.contain, // Uncomment this if needed to fit the image within the specified dimensions
                          ),
                          Text(
                            "Vehicle Accident",
                            style: TextStyle(
                                fontSize: 27.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CurrentLocation()),
                      );
                    },
                    child: Container(
                      width: w * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/tourist.png", // Set the desired width
                            height: h * 0.225, // Set the desired height
                            // fit: BoxFit.contain, // Uncomment this if needed to fit the image within the specified dimensions
                          ),
                          Text(
                            "Lost",
                            style: TextStyle(
                                fontSize: 27.5,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
