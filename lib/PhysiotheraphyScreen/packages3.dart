import 'package:flutter/material.dart';
import 'package:testavizh/widgets/serviceCard.dart';
import 'package:testavizh/widgets/viewAll.dart';

import '../widgets/doc_card.dart';

class Packages3 extends StatelessWidget {
  const Packages3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Packages ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black.withOpacity(0.800000011920929),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            ViewAll(title: "Packages"),
            SizedBox(height: 5),
            ServiceCard(),
            ServiceCard(),
            SizedBox(height: 10),
            ViewAll(title: "Physiotherapists near you"),
            SizedBox(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return const Center(
                    child: DocCard(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
