import 'package:flutter/material.dart';
import 'package:testavizh/doc_card.dart';
import 'package:testavizh/service_box.dart';
import 'package:testavizh/widgets/searchbar.dart';
import 'package:testavizh/widgets/viewAll.dart';

import '../option_box.dart';

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
              ViewAll(title: "Services we offer"),
              const Features(),
              const SizedBox(height: 25),
              CustomSearchBar(),
              // const SearchBar(
              //   padding: MaterialStatePropertyAll<EdgeInsets>(
              //     EdgeInsets.symmetric(horizontal: 16.0),
              //   ),
              //   onTap: null,
              //   leading: Icon(Icons.search),
              //   hintText: "Search for staff..",
              // ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: MediaQuery.of(context).size.height / 6,
                  child: Image.asset(
                    'assets/img3.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ViewAll(title: "Staff near you"),
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
                      child: const Center(
                        child: Text("Doc"),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              ViewAll(title: "Trending Articles"),
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
