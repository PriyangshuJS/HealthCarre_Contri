import 'package:flutter/material.dart';
import 'package:testavizh/widgets/conformButton.dart';
import 'package:testavizh/widgets/option_box.dart';

import '../widgets/paymentCard.dart';
import '../widgets/serviceCard.dart';

class Payment7 extends StatelessWidget {
  const Payment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Book Appointment',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black.withOpacity(0.800000011920929),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: Colors.black.withOpacity(0.25),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: paymentCard(
                    duration: 12,
                    service: "General Carre",
                    time: 12,
                    price: 500),
              ),
              Text(
                'Payment option:',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.800000011920929),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              ConformButton(conformText: "Pay now")
            ],
          ),
        ),
      ),
    );
  }
}
