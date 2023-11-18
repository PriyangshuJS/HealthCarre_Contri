import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 3.5 / 5,
      height: MediaQuery.of(context).size.height / 15,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xB2F83D5B)),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20),
          Opacity(
            opacity: 0.50,
            child: Text(
              'Search for staff..',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
