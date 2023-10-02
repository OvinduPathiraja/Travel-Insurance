import 'package:flutter/material.dart';
import 'package:travel_insurance/Widgets/header.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          CustomHeader(),
          Container(
            child: Image.asset(
              "images/final.gif",
              height: h * 0.4,
            ),
          ),
          Container(
            width: w * 0.8,
            margin: EdgeInsets.only(top: 20),
            child: Text(
              "We have received your request and we’ll get to you as soon as possible",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
              child: Container(
                width: w * 0.5,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green,
                ),
                child: const Center(
                    child: Text("Call Us",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 251, 251, 251)))),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contact()),
                );
              },
              child: Container(
                width: w * 0.5,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(255, 202, 182, 34),
                ),
                child: const Center(
                    child: Text("Tips",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 251, 251, 251)))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
