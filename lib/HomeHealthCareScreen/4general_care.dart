import 'package:flutter/material.dart';
import 'package:testavizh/widget/conformButton.dart';
import 'package:testavizh/widget/option_box.dart';
import 'package:testavizh/widget/reviewCard.dart';

class GeneralCare extends StatelessWidget {
  const GeneralCare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 15),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: Image.asset(
                'assets/generalCare1.png',
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'General Care',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black.withOpacity(0.8),
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 20),
            const Text(
              'General Care - Specific Services',
              style: TextStyle(
                color: Color(0xFFF83D5B),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OptionBox("Companionships"),
                    OptionBox("Hygiene"),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OptionBox("Check-in Visits"),
                    OptionBox("Medicines"),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OptionBox("Feeding"),
                    OptionBox("Cleaning"),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OptionBox("Mobility"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Our Happy clients - ',
              style: TextStyle(
                color: Colors.black.withOpacity(0.8),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Reviews:',
              style: TextStyle(
                color: Color(0xFFF83D5B),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            ReviewCard(),
            const SizedBox(height: 10),
            ReviewCard(),
            const SizedBox(height: 15),
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
                _buildButton("FAQs", () => print("Button 1 clicked"),
                    Icons.question_mark),
                SizedBox(width: MediaQuery.of(context).size.width / 4),
                _buildButton("Chat with us", () => print("Button 2 clicked"),
                    Icons.comment),
              ],
            ),
            const SizedBox(height: 20),
            ConformButton(conformText: 'Take assessment'),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String label, VoidCallback onPressed, IconData iconData) {
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
            child: Icon(
              iconData,
              color: Colors.white,
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
}
