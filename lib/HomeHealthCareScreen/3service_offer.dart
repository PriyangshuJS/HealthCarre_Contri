import 'package:flutter/material.dart';
import 'package:testavizh/widget/serviceCard.dart';
import 'package:testavizh/widget/viewAll.dart';

import '../widget/searchbar.dart';

class ServiceOffer extends StatelessWidget {
  const ServiceOffer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Services we offer",
          style: TextStyle(
            color: Colors.black.withOpacity(0.800000011920929),
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(children: [
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomSearchBar(),
                  IconButton(
                    onPressed: null,
                    icon: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.filter_list,
                        color: Color(0xB2F83D5B),
                      ),
                    ),
                  )
                ]),
            const SizedBox(height: 40),
            ViewAll(title: "Transitional Visits"),
            ServiceCard(),
            const SizedBox(height: 20),
            ServiceCard(),
            const SizedBox(height: 40),
            ViewAll(title: "Short-term services"),
            ServiceCard(),
            const SizedBox(height: 20),
            ServiceCard(),
            const SizedBox(height: 40),
            ViewAll(title: "Long-term services"),
            ServiceCard(),
            const SizedBox(height: 20),
            ServiceCard(),
          ]),
        ),
      ),
    );
  }
}
