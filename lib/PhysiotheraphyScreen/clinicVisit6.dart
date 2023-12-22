import 'package:flutter/material.dart';
import 'package:testavizh/widgets/calender.dart';
import 'package:testavizh/widgets/conformButton.dart';
import 'package:testavizh/widgets/serviceCard.dart';

class ClinicVisit extends StatefulWidget {
  const ClinicVisit({super.key});

  @override
  State<ClinicVisit> createState() => _ClinicVisitState();
}

class _ClinicVisitState extends State<ClinicVisit> {
  String _getCurrentTime() {
    DateTime now = DateTime.now();
    return '${now.hour}:${now.minute} ${now.hour >= 12 ? 'PM' : 'AM'}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Clinic Visit',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black.withOpacity(0.800000011920929),
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          height: 0,
        ),
      )),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Text(
            'Available doctors:',
            style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          ServiceCard(),
          Opacity(
            opacity: 0.50,
            child: Text(
              'Select date:',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF0D0D0D),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Calender(),
          Opacity(
            opacity: 0.50,
            child: Text(
              'Select Time:',
              style: TextStyle(
                color: Color(0xFF0D0D0D),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 169,
            height: 40,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  _getCurrentTime(),
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.access_time,
                  size: 20,
                  color: const Color(0xFFF83D5B),
                ),
              ],
            ),
          ),
          ConformButton(conformText: "BOOK")
        ],
      )),
    );
  }
}
