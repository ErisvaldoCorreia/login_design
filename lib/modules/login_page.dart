import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
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
                  Colors.transparent,
                  Color(0xff161d27).withOpacity(0.9),
                  Color(0xff161d27),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Hora de começar o treino! Faça Login',
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                SizedBox(height: 20),
                Container(
                  height: 60,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                      filled: true,
                      fillColor: Color(0xff161d27),
                      enabledBorder: OutlineInputBorder(
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
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Senha',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                      filled: true,
                      fillColor: Color(0xff161d27),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                // Espaçamento Final do dispositivo
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
