import 'package:flutter/material.dart';
import 'package:testavizh/widgets/doc_card.dart';
import 'package:testavizh/widgets/serviceCard.dart';
import 'package:testavizh/widgets/viewAll.dart';

class MainPage1 extends StatelessWidget {
  const MainPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Physiotherapy',
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
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 354,
              height: 107,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-1.00, 0.07),
                  end: Alignment(1, -0.07),
                  colors: [Color(0xFF0EB3F1), Color(0xFF6ADAFC)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 44,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF3F3F3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 44,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF3F3F3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ],
            ),
            Text(
              'Category',
              style: TextStyle(
                color: Color(0xFFF83D5B),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyBoxWidget(title: 'Box 1', imagePath: 'assets/image1.png'),
                    MyBoxWidget(title: 'Box 2', imagePath: 'assets/image2.png'),
                    MyBoxWidget(title: 'Box 3', imagePath: 'assets/image3.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyBoxWidget(title: 'Box 4', imagePath: 'assets/image4.png'),
                    MyBoxWidget(title: 'Box 5', imagePath: 'assets/image5.png'),
                    MyBoxWidget(title: 'Box 6', imagePath: 'assets/image6.png'),
                  ],
                ),
              ],
            ),
            ViewAll(title: "Packages"),
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
            SizedBox(height: 10),
            ViewAll(title: "One day sessions"),
            ServiceCard(),
            ServiceCard(),
          ],
        ),
      )),
    );
  }
}

class MyBoxWidget extends StatelessWidget {
  final String title;
  final String imagePath;

  const MyBoxWidget({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.height / 10,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          margin: EdgeInsets.all(8),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
