import 'package:flutter/material.dart';
import 'package:testavizh/HomeHealthCareScreen/user_detail.dart';
import 'package:testavizh/HomeHealthCareScreen/user_health.dart';
import 'package:testavizh/PhysiotheraphyScreen/TakeAssessment5.dart';
import 'package:testavizh/PhysiotheraphyScreen/packages3.dart';

import 'HomeHealthCareScreen/TransitionalVisit.dart';
import 'PhysiotheraphyScreen/MainPage1.dart';
import 'PhysiotheraphyScreen/packages4.dart';

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
      home: TakeAssessment5(),
    );
  }
}
