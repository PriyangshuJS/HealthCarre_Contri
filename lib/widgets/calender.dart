import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return CalendarWeek(
      height: 200,
      minDate: DateTime.now().add(
        Duration(days: -365),
      ),
      maxDate: DateTime.now().add(
        Duration(days: 365),
      ),
      onDatePressed: (DateTime datetime) {
        setState(() {
          _selectedDate = datetime;
        });
      },
      onDateLongPressed: (DateTime datetime) {
        setState(() {
          _selectedDate = datetime;
        });
      },
      dayOfWeekStyle:
          TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
      dateStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
      todayDateStyle:
          TextStyle(color: Colors.orange, fontWeight: FontWeight.w400),
      todayBackgroundColor: Colors.black.withOpacity(0.15),
      pressedDateBackgroundColor: const Color(0xFFF83D5B),
      pressedDateStyle:
          TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
      dateBackgroundColor: Colors.transparent,
      backgroundColor: Colors.white,
      dayOfWeek: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
      dayShapeBorder: BoxShape.circle,
      decorations: [
        DecorationItem(
          decorationAlignment: FractionalOffset.bottomRight,
          date: DateTime.now(),
          decoration: Icon(
            Icons.today,
            color: const Color(0xFFF83D5B),
          ),
        ),
      ],
    );
  }
}
