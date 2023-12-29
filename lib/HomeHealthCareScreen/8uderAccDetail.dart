import 'package:flutter/material.dart';
import 'package:testavizh/widget/doc_card.dart';
import 'package:testavizh/widget/managerCard.dart';

class UserAccDetail extends StatelessWidget {
  const UserAccDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
          child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ManagerCard(),
            const SizedBox(height: 20),
            Text(
              'OTP:\t\t\t....',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'General Care',
              style: TextStyle(
                color: Colors.black.withOpacity(0.800000011920929),
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildUserRow('Patient Name', 'UserName'),
                buildUserRow('Relation', 'gUserName'),
                buildUserRow('Age:', 'jUserName'),
                buildUserRow('Gender', 'eUserName'),
                buildUserRow('Duration:', 'UserName'),
                buildUserRow('Issue:', 'gUserName'),
                buildUserRow('Service Opted:', 'jUserName'),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'For Assessment Visit:',
              style: TextStyle(
                color: Colors.black.withOpacity(0.800000011920929),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            DocCard(),
            const SizedBox(height: 20),
            Text(
              'For Care taker:',
              style: TextStyle(
                color: Colors.black.withOpacity(0.800000011920929),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            DocCard(),
            DocCard(),
            const SizedBox(height: 20),
            Text(
              'Request for another staff.',
              style: TextStyle(
                color: Color(0xFFF83D5B),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFF83D5B),
                height: 0,
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildUserRow(String label, String username) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text('$label:'),
        Spacer(),
        Text(username),
      ],
    );
  }
}
