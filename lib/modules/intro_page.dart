import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:login_design/modules/login_page.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (contex) => LoginPage(),
            )));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161d27),
      body: Center(
        child: SpinKitRipple(
          size: 70.0,
          color: Color(0xfffe972f),
        ),
      ),
    );
  }
}
