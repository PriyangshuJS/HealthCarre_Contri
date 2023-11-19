// dropbox_widget.dart

import 'package:flutter/material.dart';

class Dropbox extends StatefulWidget {
  @override
  _DropboxState createState() => _DropboxState();
}

class _DropboxState extends State<Dropbox> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            height: MediaQuery.of(context).size.height / 10,
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
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.lunch_dining,
                    color: Color(0xFFF83D5B),
                  ),
                  Text(
                    'Hygiene',
                    style: TextStyle(
                      color: Color(0xFFF83D5B),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  Icon(
                    isExpanded ? Icons.minimize_rounded : Icons.add_rounded,
                    color: Color(0xFFF83D5B),
                  ),
                ],
              ),
            ),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: isExpanded ? 200.0 : 0.0,
          child: isExpanded
              ? Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Task',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.25),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Status',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.25),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Time',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.25),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          // You can customize the content based on the index or any other logic
                          return taskRows(
                            "Task $index",
                            "Done",
                            "11:00 AM",
                          );
                        },
                      ),
                    ),
                  ],
                )
              : null,
        ),
      ],
    );
  }

  Widget taskRows(String r1, String r2, String r3) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(r1),
          Spacer(),
          Container(
            width: 76,
            height: 25,
            decoration: ShapeDecoration(
              color: Color(0xFFF83D5B),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: Center(
              child: Text(
                'Done',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
          ),
          Spacer(),
          Text(r3)
        ],
      ),
    );
  }
}
