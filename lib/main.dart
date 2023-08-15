import 'package:flutter/material.dart';
import 'widgets/pages/welcome.dart';
import './widgets/pages/auth.dart';
import './widgets/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StepUp',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => WelcomePage(),
        '/auth': (BuildContext context) => const AuthPage(),
        '/login': (BuildContext context) => const LoginPage(),
      },
    );
  }
}
