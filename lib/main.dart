import 'package:flutter/material.dart';
import 'package:testavizh/screen/assessment.dart';
import 'package:testavizh/screen/healthhomepage.dart';
import 'package:testavizh/screen/3service_offer.dart';
import 'package:testavizh/screen/general_care.dart';
import 'package:testavizh/screen/scheduleAss.dart';
import 'package:testavizh/screen/user_detail.dart';
import 'package:testavizh/widgets/serviceCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: UserDetail(),
    );
  }
}
