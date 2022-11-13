import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ClinicsList extends StatefulWidget {
  const ClinicsList({super.key});

  @override
  State<ClinicsList> createState() => _ClinicsListState();
}

class _ClinicsListState extends State<ClinicsList> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 30),
          children: const [
            Text(
              "قائمة العيادات",
              style: TextStyle(
                  color: Color.fromARGB(255, 17, 132, 219), fontSize: 22),
            ),
            ClinicCard('عيادة د. محمد جابر','أنف, أذن, حنجرة','جنين - شارع الحسبة'),
            ClinicCard('عيادة د. محمد جابر','أنف, أذن, حنجرة','جنين - شارع الحسبة'),
            ClinicCard('عيادة د. محمد جابر','أنف, أذن, حنجرة','جنين - شارع الحسبة'),
            ClinicCard('عيادة د. محمد جابر','أنف, أذن, حنجرة','جنين - شارع الحسبة'),
            ClinicCard('عيادة د. محمد جابر','أنف, أذن, حنجرة','جنين - شارع الحسبة'),
          ],
        ),
      ),
    );
  }
}

class ClinicCard extends StatelessWidget {
  const ClinicCard(this.clinicName, this.clinicSpecialize, this.clinicLocation);
  final String clinicName;
  final String clinicSpecialize;
  final String clinicLocation;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color.fromARGB(222, 35, 35, 35),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              clinicName ,
              style: TextStyle(color: Color(0xffffffff)),
            ),
            Text(
              clinicSpecialize,
              style: TextStyle(color: Color(0xffffffff)),
            ),
            Text(
              clinicLocation,
              style: TextStyle(color: Color(0xffffffff)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, color: Color(0xffffffff)),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 17, 132, 219),
                ),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 17, 132, 219),
                ),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 17, 132, 219),
                ),
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 17, 132, 219),
                ),
              ],
            )
          ],
        ));
  }
}
