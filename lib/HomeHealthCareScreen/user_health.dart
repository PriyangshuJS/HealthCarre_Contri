import 'package:flutter/material.dart';

import 'uderAccDetail.dart';
import 'userActivity.dart';

class UserHealth extends StatefulWidget {
  const UserHealth({super.key});

  @override
  State<UserHealth> createState() => _UserHealthState();
}

class _UserHealthState extends State<UserHealth> {
  int detail = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          //smainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  detail = 1;
                });
              },
              icon: Container(
                width: 169,
                height: 40,
                decoration: ShapeDecoration(
                  color: detail == 1
                      ? Colors.grey.withOpacity(0.7)
                      : Color(0xB2D9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Details',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.800000011920929),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  detail = 0;
                });
              },
              icon: Container(
                width: 169,
                height: 40,
                decoration: ShapeDecoration(
                  color: detail == 0
                      ? Colors.grey.withOpacity(0.7)
                      : Color(0xB2D9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Activity',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.800000011920929),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: detail == 1 ? UserAccDetail() : UserActivity(),
    );
  }
}
