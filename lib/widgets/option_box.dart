import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OptionBox extends StatelessWidget {
  String optionText;
  OptionBox(this.optionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.width / 7,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 255, 48, 92)),
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            optionText,
            style: const TextStyle(color: Color.fromARGB(255, 255, 48, 92)),
          ),
        ),
      ),
    );
  }
}
