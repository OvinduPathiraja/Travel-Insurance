import 'package:flutter/material.dart';
import 'package:travel_insurance/Screens/Type.dart';
import 'package:travel_insurance/Widgets/header.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          CustomHeader(),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 50, top: 25),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "hello, ",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  "Ovindu",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Type()),
                  );
                },
                child: Container(
                  width: w,
                  color: Color.fromARGB(67, 92, 92, 92),
                  child: CircleAvatar(
                    radius: 75,
                    backgroundColor: Colors.red,
                    child: ClipOval(
                      child: Image.asset(
                        "images/error.png",
                        width: 125,
                        height: 125,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )),
          ),
          Container(
            width: w * 0.8,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(146, 0, 0, 0)),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(60, 158, 158, 158)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Row(
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.red,
                          child: ClipOval(
                            child: Image.asset(
                              "images/error.png",
                              width: 125,
                              height: 125,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          "What is Panic Button",
                          style: TextStyle(fontSize: 22.5),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "The Panic Button feature within our tour insurance mobile application is designed to provide swift and effective assistance in times of emergency or distress during your travels. This intuitive feature serves as your immediate lifeline, connecting you to the necessary resources and support when you find yourself facing unexpected situations. Activation Process: Quick Access: The Panic Button is prominently located on the app's main interface for easy access. In times of crisis, it ensures that help is just a tap away. Initiating Assistance: When you press the Panic Button, the app will swiftly transition to a dedicated assistance screen tailored to address your emergency needs. Emergency Categorization: Accident Reporting: If you've been involved in a vehicle accident, the Panic Button will guide you through the process of documenting the incident. You'll be prompted to provide details such as the location, severity of the accident, and any injuries sustained. Additionally, the app may offer guidance on collecting essential information and photographs. Injury Support: In the event of personal injury, selecting this option will guide you through a series of questions to assess the severity of the injury. You'll also be directed to seek immediate medical attention and receive information on nearby medical facilities or hospitals. Lost or Stranded: If you find yourself lost or stranded in an unfamiliar location, the Panic Button can assist you in several ways. It may offer navigation assistance to help you find your way back to a familiar area or direct you to nearby landmarks for safety.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
