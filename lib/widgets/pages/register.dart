import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Регистрация"),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
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
                padding: EdgeInsets.only(top:180, left: 15.0, right: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                    labelText: 'Почта',
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: 'Введите электронную почту',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                    ),
                    labelText: 'Пароль',
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: 'Введите пароль',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child:OutlinedButton(
                  onPressed: () {},
                  child: const Text('Создать аккаунт'),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                ))
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: RichText(
                  text: TextSpan(
                  style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Уже есть аккаунт',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/login');
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}