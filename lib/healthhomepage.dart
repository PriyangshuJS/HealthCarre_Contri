import 'package:flutter/material.dart';
import 'package:testavizh/service_box.dart';

import 'option_box.dart';

class HomeHealthcarePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Healthcare'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.notifications,
              color: Color.fromARGB(255, 255, 48, 92),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  color: Colors.amber,
                  child: Image.asset(
                    'assets/img1.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text("What type of service do you want?"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OptionBox("Short - term"),
                  OptionBox("Long - term"),
                  OptionBox("Transitional Visit"),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Services we offer"),
                  TextButton(
                      onPressed: null,
                      child: Text(
                        "View all",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 255, 48, 92),
                          color: Color.fromARGB(255, 255, 48, 92),
                        ),
                      )),
                ],
              ),
              const Features(),
              const SizedBox(height: 20),
              const SearchBar(
                padding: MaterialStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 16.0),
                ),
                onTap: null,
                leading: Icon(Icons.search),
                hintText: "Search for staff..",
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.amberAccent,
                height: MediaQuery.of(context).size.height / 6,
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Staff near you"),
                  TextButton(
                      onPressed: null,
                      child: Text(
                        "View all",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 255, 48, 92),
                          color: Color.fromARGB(255, 255, 48, 92),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      width: 100.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text('Item $index'),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Trending Articles"),
                  TextButton(
                      onPressed: null,
                      child: Text(
                        "View all",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 255, 48, 92),
                          color: Color.fromARGB(255, 255, 48, 92),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 7,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      width: 100.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text('Item $index'),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
