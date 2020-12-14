import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161d27),
      appBar: AppBar(
        backgroundColor: Color(0xff161d27),
        elevation: 0,
        title: Text('Bem Vindo!'),
      ),
      body: Stack(
        children: [
          Center(
            child: SpinKitFadingGrid(
              size: 50.0,
              color: Color(0xfffe972f),
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
                    'Aguardem',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fit',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 44,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Dosis',
                          letterSpacing: 5,
                        ),
                      ),
                      Text(
                        'Training',
                        style: TextStyle(
                          color: Color(0xfffe972f),
                          fontSize: 44,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Dosis',
                          letterSpacing: 5,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Aplicativo em Construção!',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Desenvolvedor: Erisvaldo Correia',
                    style: TextStyle(color: Color(0xfffe972f), fontSize: 16),
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
