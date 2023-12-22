import 'package:flutter/material.dart';
import 'package:testavizh/widgets/reviewCard.dart';
import 'package:testavizh/widgets/viewAll.dart';

import '../widgets/conformButton.dart';

class Packages4 extends StatelessWidget {
  const Packages4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> randomData = generateRandomData();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Packages ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 129,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/354x129"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Orthopedic Physiotherapy',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                width: 354,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 10),
              MyList(days: 5),
              ViewAll(title: "Reviews"),
              ReviewCard(data: randomData),
              const Text(
                'View All',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFF83D5B),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFF83D5B),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton("Button 1", () => print("Button 1 clicked")),
                  SizedBox(width: MediaQuery.of(context).size.width / 4),
                  _buildButton("Button 2", () => print("Button 2 clicked")),
                ],
              ),
              const SizedBox(height: 20),
              ConformButton(conformText: 'Take assessment'),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  final int days;

  const MyList({required this.days});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: days,
      itemBuilder: (context, index) {
        return MyListItem(dayIndex: index + 1);
      },
    );
  }
}

Map<String, dynamic> generateRandomData() {
  return {
    "cname": "user",
    "comment": "fdshfuefhdjfdjvbdbvj",
  };
}

class MyListItem extends StatelessWidget {
  final int dayIndex;

  const MyListItem({required this.dayIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Day $dayIndex:',
          style: TextStyle(
            color: Color(0xFFF83D5B),
            fontSize: 13,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        Text('* Today\'s some text'),
        Text('* Some other text'),
      ],
    );
  }
}

Widget _buildButton(String label, VoidCallback onPressed) {
  return InkWell(
    onTap: onPressed,
    child: Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            color: Color(0xFFF83D5B),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}