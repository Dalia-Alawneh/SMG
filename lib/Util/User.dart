import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/SecretaryLogIn.dart';

class User extends StatelessWidget {
  User({ required this.user, required this.ontap});
  final user;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>SecretaryLogIn())),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Color(0xff21A7CC),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: ListTile(
          title: Text(
            user,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: 'Lateef',
            ),
          ),
        ),
      ),
    );
  }
}
