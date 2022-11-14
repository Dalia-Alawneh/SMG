import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this,
      duration: Duration(seconds: 15))..repeat();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            AnimatedBuilder(
              animation: _controller,
              child: Image(image: AssetImage(
                  'images/cycle.png'
              )),
              builder: (BuildContext context, Widget? child){
                return Transform.rotate(
                    angle: _controller.value * 2 * math.pi,
                    child:child
                );
              },

            ),
            Positioned(
                top: 86,
                left: MediaQuery.of(context).size.width/3.3,
                child:
                Column(
                  children: [
                    AvatarGlow(
                      glowColor: Color(0xff21A7CC),
                      endRadius:70,
                      duration:Duration(seconds: 2),
                      repeat:true,
                      showTwoGlows: true,
                      curve: Curves.easeOutQuad,
                      child: Image(
                        width: 80.0,
                        image: AssetImage('images/mic.png'),),
                    ),
                    Text('SMG', style: TextStyle(
                        color: Color(0xff21A7CC),
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),),
                    Text('Smart Medical Guidance',
                      style: TextStyle(
                        color:  Color(0xff21A7CC),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();

  }
}