import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:login_design/modules/intro_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define a StatusBar com tema Light - verificar se afeta outras screens
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      title: 'Login Design',
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    );
  }
}
