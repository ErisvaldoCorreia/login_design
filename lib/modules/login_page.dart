import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff161d27),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
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
                      color: Colors.red[300],
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
                      onPressed: () {},
                      color: Color(0xfffe972f),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
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
                          color: Colors.grey.shade500,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Cadastra-se',
                        style: TextStyle(
                          color: Colors.red[300],
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  // Espaçamento Final do dispositivo
                  SizedBox(height: 50),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
