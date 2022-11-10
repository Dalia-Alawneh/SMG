import 'package:flutter_application_1/ClinicDates.dart';
import 'package:flutter_application_1/ForgotPassword.dart';
import 'package:flutter_application_1/clinics.dart';

import 'appointments.dart';
import "package:flutter/material.dart";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClinicDates()
    );
  }
}
