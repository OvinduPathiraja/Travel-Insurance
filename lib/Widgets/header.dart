import 'package:flutter/material.dart';
import 'package:travel_insurance/Screens/home.dart';
import 'package:travel_insurance/Screens/profile.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w,
      height: h * 0.180,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("images/line.png")),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(left: 30),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: const Color.fromARGB(255, 238, 237, 237),
                backgroundImage: AssetImage("images/logo.png"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(right: 30),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: const Color.fromARGB(222, 238, 237, 237),
                backgroundImage: AssetImage("images/user.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
