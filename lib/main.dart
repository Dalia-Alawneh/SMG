import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ClinicDates.dart';
import 'package:flutter_application_1/screens/appointments.dart';
import 'package:flutter_application_1/screens/clinics.dart';
import 'package:flutter_application_1/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ClinicDates());
  }
}
