import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_insurance/Screens/login.dart';
import 'package:travel_insurance/Widgets/header.dart';
import 'package:travel_insurance/Widgets/theme_provider.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          CustomHeader(),
          Container(
              margin: EdgeInsets.only(top: 20),
              width: w * 0.8,
              decoration: BoxDecoration(
                  color: Color.fromARGB(68, 158, 158, 158),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 15),
                    child: Row(
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Ovindu Pathiraja",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 15),
                    child: Row(
                      children: [
                        Text(
                          "Vehicle No.",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "ABC 1234",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 15),
                    child: Row(
                      children: [
                        Text(
                          "Id Number",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "2003012345678",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 15),
                    child: Row(
                      children: [
                        Text(
                          "Blood Group",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "O+",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 35, top: 15, bottom: 20),
                    child: Row(
                      children: [
                        Text(
                          "Insurance Number",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "123456",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              )),
          Container(
            width: w,
            margin: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Dark/Light Mode",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      Provider.of<ThemeProvider>(context, listen: false)
                          .toggleTheme();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 16, 140, 24),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 125,
                      height: 50,
                      padding: const EdgeInsets.all(16), // Adjusted padding
                      child: Center(
                        child: Text(
                          'Click Here', // Replace with the desired text
                          style: TextStyle(
                            color: Color.fromARGB(255, 252, 251, 251),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: GestureDetector(
              onTap: () {
                FirebaseAuth.instance.signOut().then((value) {
                  print("Signed out");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                });
              },
              child: Container(
                width: w * 0.6,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green,
                ),
                child: const Center(
                    child: Text("Log Out",
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
