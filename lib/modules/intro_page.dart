import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:login_design/utils/constants.dart';
import 'login_page.dart';

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
      backgroundColor: baseBlack,
      body: Stack(
        children: [
          SpinKitFadingCube(
            size: 70.0,
            color: baseOrange,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Wall',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Dosis',
                          letterSpacing: 5,
                        ),
                      ),
                      Text(
                        'Academia',
                        style: TextStyle(
                          color: baseOrange,
                          fontSize: 44,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Dosis',
                          letterSpacing: 5,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Carregando Aplicação ...',
                    style: TextStyle(color: greyShaded),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
