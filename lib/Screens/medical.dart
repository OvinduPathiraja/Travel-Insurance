import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_insurance/Screens/Last_page.dart';
import 'package:travel_insurance/Text/Heading2.dart';
import 'package:travel_insurance/Widgets/form_txt.dart';
import 'package:travel_insurance/Widgets/form_txt2.dart';

class Hospital extends StatefulWidget {
  const Hospital({Key? key}) : super(key: key);

  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  String? _selectedItem; // Make _selectedItem nullable

  // Function to handle dropdown value changes
  void _onDropdownChanged(String? newValue) {
    setState(() {
      _selectedItem = newValue;
    });
  }

  File? imageFile;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, left: 20),
                child: const Column(
                  children: [head2(text: "Insurance Claim Information")],
                ),
              ),
              Container(
                width: w * 0.9,
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 160, top: 15),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            Form_txt2("Full Name Of The Patient "),
                            star()
                          ],
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter full name",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black12, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Full Name Of The Patient';
                        }
                        return null;
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 230, top: 15),
                      child: RichText(
                        text: TextSpan(
                          children: [Form_txt2("Hospital Name "), star()],
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter hospital name",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black12, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Hospital Name';
                        }
                        return null;
                      },
                    ),
                    // Similar modifications for other text fields...
                    // (City, Type of Injury)

                    Container(
                      margin: const EdgeInsets.only(right: 300, top: 15),
                      child: RichText(
                        text: TextSpan(
                          children: [Form_txt2("City "), star()],
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter city",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black12, width: 1.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter City';
                        }
                        return null;
                      },
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 240, top: 15),
                      child: RichText(
                        text: TextSpan(
                          children: [Form_txt2("Type of Injury "), star()],
                        ),
                      ),
                    ),
                    Container(
                      width: w * 0.95,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(
                              126, 0, 0, 0), // Choose your desired border color
                          width: 1.0, // Adjust the border width as needed
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: DropdownButtonFormField<String>(
                        value: _selectedItem,
                        hint: const Text('   Select an option'),
                        onChanged: _onDropdownChanged,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select an option';
                          }
                          return null;
                        },
                        isExpanded: true,
                        items: <String>[
                          'Physhical Injuries',
                          'Infectious',
                          'Diabetes/Cholestrol',
                          'Other',
                        ].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        focusColor: Colors.white,
                      ),
                    ),
                    
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 150,
                      height: 140,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(width: 8, color: Colors.black12),
                        image: imageFile != null
                            ? DecorationImage(image: FileImage(imageFile!))
                            : null,
                      ),
                      child: imageFile == null ? const Text("Image") : null,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () =>
                                    getImage(source: ImageSource.camera),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(
                                      135, 212, 211, 211), // Set button color
                                  minimumSize:
                                      Size(100, 40), // Set minimum button size
                                ),
                                child: Image.asset("images/Camera.png")),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () =>
                                    getImage(source: ImageSource.gallery),
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(
                                      135, 212, 211, 211), // Set button color
                                  minimumSize:
                                      Size(100, 40), // Set minimum button size
                                ),
                                child: Image.asset(
                                  "images/Folder.png",
                                  width: w * 0.3,
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 40, bottom: 40),
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Contact(),
                              ),
                            );
                          }
                        },
                        child: Container(
                          width: w * 0.8,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),
                          child: const Center(
                            child: Text(
                              "Request Claim",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 251, 251, 251),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> getImage({required ImageSource source}) async {
    final picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
