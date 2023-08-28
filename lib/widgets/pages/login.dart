import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isValidEmail = true;
  bool isValidPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Вход"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          tooltip: 'Вернуться назад',
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 180, left: 15.0, right: 15.0),
                child: TextField(
                  controller: emailController,
                  onChanged: (value) {
                    setState(() {
                      isValidEmail = true;
                    });
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                    labelText: isValidEmail ? 'Почта' : 'Неверная электронная почта',
                    labelStyle: const TextStyle(color: Colors.black),
                    hintText: 'Введите электронную почту',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  onChanged: (value) {
                    setState(() {
                      isValidPassword = true;
                    });
                  },
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                    labelText: isValidPassword ? 'Пароль' : 'Слишком короткий пароль',
                    labelStyle: const TextStyle(color: Colors.black),
                    hintText: 'Введите пароль',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: OutlinedButton(
                  onPressed: () {
                    final bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(emailController.text);
                    if (!emailValid) {
                      setState(() {
                        isValidEmail = false;
                      });
                    }
                    if (passwordController.text.length < 8) {
                      setState(() {
                        isValidPassword = false;
                      });
                    }
                    if (isValidEmail && isValidPassword) {
                      // var url = Uri.https('backend/register');
                      // var response = http.post(url, body: {'email': emailController.text, 'password': passwordController.text});
                      Navigator.pushNamed(context, '/stats');
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('Создать аккаунт'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
