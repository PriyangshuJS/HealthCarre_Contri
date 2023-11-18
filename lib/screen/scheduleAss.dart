import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:testavizh/widgets/conformButton.dart';

import '../widgets/calender.dart';

class ScheduleA extends StatefulWidget {
  const ScheduleA({Key? key}) : super(key: key);

  @override
  State<ScheduleA> createState() => _ScheduleAState();
}

class _ScheduleAState extends State<ScheduleA> {
  String _getCurrentTime() {
    DateTime now = DateTime.now();
    return '${now.hour}:${now.minute} ${now.hour >= 12 ? 'PM' : 'AM'}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Schedule Assessment',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
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
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x19000000),
                    blurRadius: 4,
                    offset: Offset(2, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Calender(),
            ),
            SizedBox(height: 20),
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
            Spacer(),
            ConformButton(conformText: "Schedule"),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
