import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/RegisterLogin.dart';
import '../screens/page_header.dart';

import '../Util/bottom_bar.dart';
import '../Util/colors.dart';
import '../Util/text_style.dart';
import 'speech.dart';

class RecordingScreen extends StatefulWidget {
  const RecordingScreen({Key? key}) : super(key: key);

  @override
  State<RecordingScreen> createState() => _RecordingScreenState();
}

class _RecordingScreenState extends State<RecordingScreen> {
  String text = 'Speeeech...';
  static final TextStyle headerStyle = TextStyle(
    color: KColor.mainBlueColor,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    fontFamily: 'Lateef',
  );
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                PageHeader(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'اضغط',
                      style: headerStyle,
                    ),
                    Icon(
                      Icons.mic,
                      color: KColor.mainBlueColor,
                      size: 40,
                    ),
                    Text('لبدء التسجيل', style: headerStyle),
                  ],
                ),
              ],
            ),
            Text(text),
            SizedBox(
              height: 30,
            ),
            AvatarGlow(
              glowColor: Color(0xff21A7CC),
              endRadius: 140,
              duration: Duration(seconds: 2),
              repeat: true,
              showTwoGlows: true,
              curve: Curves.easeOutQuad,
              child: GestureDetector(
                child: Image(
                  width: 140.0,
                  image: AssetImage('images/record.png'),
                ),
                onTap: () {
                  toggleRecording();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future toggleRecording() => SpeechApi.toggleRecording(
      onResult: (text) => setState(
            () {
              this.text = text;
            },
          ));
}
