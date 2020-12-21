import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:login_design/utils/constants.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;

  //Variaveis para coleta de campos temporárias
  String email = '';
  String password = '';

  changeLoading() {
    FocusScope.of(context).unfocus();
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  goToHomePage() {
    changeLoading();
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (contex) => HomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    print('$email e $password');
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: baseBlack,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/muscleEntry.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    baseBlack.withOpacity(0.6),
                    baseBlack.withOpacity(0.9),
                    baseBlack,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Align(
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
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
                                color: baseOrange,
                                fontSize: 44,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Dosis',
                                letterSpacing: 5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Hora de começar o treino! Faça Login',
                          style: TextStyle(color: greyShaded),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: TextField(
                            onChanged: (text) {
                              email = text;
                            },
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Usuário',
                              hintStyle: TextStyle(
                                color: greyShaded,
                              ),
                              filled: true,
                              fillColor: baseBlack,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          height: 60,
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: TextField(
                            onChanged: (text) {
                              password = text;
                            },
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Senha',
                              hintStyle: TextStyle(
                                color: greyShaded,
                              ),
                              filled: true,
                              fillColor: baseBlack,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Esqueceu sua senha?',
                          style: TextStyle(
                            color: baseOrange,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 60,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: FlatButton(
                            onPressed: () {
                              changeLoading();
                              Timer(Duration(seconds: 3), () {
                                if (email == 'erisvaldo' &&
                                    password == '12345') {
                                  goToHomePage();
                                } else {
                                  changeLoading();
                                  _bottomSheet(context);
                                }
                              });
                            },
                            color: baseOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: _isLoading
                                ? SpinKitThreeBounce(
                                    size: 25.0,
                                    color: Colors.white,
                                  )
                                : Text(
                                    'ENTRAR',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Primeira vez aqui?',
                              style: TextStyle(
                                color: greyShaded,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Cadastra-se',
                              style: TextStyle(
                                color: baseOrange,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        // Espaçamento Final do dispositivo
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext ctx) {
          return Container(
            color: baseBlack,
            child: Container(
              child: Center(
                child: Text(
                  'DADOS INCORRETOS',
                  style: TextStyle(
                    color: baseOrange,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Dosis',
                    fontSize: 30,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          );
        });
  }
}
