import 'package:flutter/material.dart';
import 'package:testavizh/option_box.dart';

class GeneralCare extends StatelessWidget {
  const GeneralCare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 10),
            Container(
              width: MediaQuery.of(context).size.width * 4.5 / 5,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.amber,
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
            Opacity(
              opacity: 0.7,
              child: Container(
                width: 354,
                height: 107,
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 4,
                      offset: Offset(2, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Opacity(
              opacity: 0.7,
              child: Container(
                width: 354,
                height: 107,
                decoration: BoxDecoration(
                  color: const Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 4,
                      offset: Offset(2, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
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
            ElevatedButton(
              onPressed: () {
                // Handle the assessment button click
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF83D5B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                shadowColor: const Color(0x9C878787),
                elevation: 5,
              ),
              child: const Text(
                'Take assessment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
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
              shape: BoxShape.circle, // Use BoxShape.circle for circular shape
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
