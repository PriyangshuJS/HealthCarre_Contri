import 'package:flutter/material.dart';
import 'package:testavizh/dropdown.dart';

import 'screen/healthhomepage.dart';

class UserDetail extends StatefulWidget {
  const UserDetail({super.key});

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height / 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset('assets/img2.png', fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Who wants service?"),
                      MyDropdown(
                        options: const ['Item 1', 'Item 2', 'Item 3', 'Item 4'],
                        width: 200.0,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("Patients age:"),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 7),
                          const Text("Gender:")
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyDropdown(
                            options: ['Item 1', 'Item 2', 'Item 3', 'Item 4'],
                            width: 100,
                          ),
                          //SizedBox(width: MediaQuery.of(context).size.width /6),
                          const IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.male_rounded,
                                color: Color.fromARGB(255, 255, 48, 92),
                              )),
                          const IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.female_rounded,
                                color: Color.fromARGB(255, 255, 48, 92),
                              )),
                          const IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.circle_rounded,
                                color: Color.fromARGB(255, 255, 48, 92),
                              )),
                        ],
                      ),
                      const Text("Location:"),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Address..',
                          hintStyle:
                              TextStyle(color: Colors.red.withOpacity(0.7)),
                          contentPadding: EdgeInsets.all(16.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: Icon(
                            Icons.location_on,
                            color: Color.fromARGB(255, 255, 48, 92),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeHealthcarePage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 255, 48, 92),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(
                            MediaQuery.of(context).size.width - 32,
                            MediaQuery.of(context).size.height / 15,
                          ),
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
