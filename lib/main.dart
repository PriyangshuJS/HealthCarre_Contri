import 'package:flutter/material.dart';
import 'package:testavizh/HomeHealthCareScreen/3service_offer.dart';
import 'package:testavizh/HomeHealthCareScreen/4general_care.dart';
import 'package:testavizh/HomeHealthCareScreen/5assessment.dart';
import 'package:testavizh/HomeHealthCareScreen/6scheduleAssessment.dart';
import 'package:testavizh/HomeHealthCareScreen/7activity.dart';
import 'package:testavizh/HomeHealthCareScreen/8user_health.dart';
import 'package:testavizh/HomeHealthCareScreen/9TransitionalVisit.dart';
import 'package:testavizh/HomeHealthCareScreen/710Payment.dart';

import 'HomeHealthCareScreen/1healthhomepage.dart';
import 'HomeHealthCareScreen/2user_detail.dart';

Future<void> main() async {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Payment(),
    );
  }
}
