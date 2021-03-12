import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:login_design/utils/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseBlack,
      appBar: AppBar(
        backgroundColor: baseBlack,
        elevation: 0,
        title: Text('Bem Vindo!'),
      ),
      body: Stack(
        children: [
          Center(
            child: SpinKitFadingGrid(
              size: 50.0,
              color: baseOrange,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 70.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Aguarde',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Food',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Dosis',
                          letterSpacing: 5,
                        ),
                      ),
                      Text(
                        'Login',
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
                    'Estudo de Composição de Layout',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Desenvolvedor: Erisvaldo Correia',
                    style: TextStyle(color: baseOrange, fontSize: 16),
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
