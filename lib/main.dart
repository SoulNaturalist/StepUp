import 'package:flutter/material.dart';
import 'widgets/pages/welcome.dart';
import './widgets/pages/register.dart';
import './widgets/pages/login.dart';
import './widgets/pages/stats.dart';
import './widgets/pages/confirm_email.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StepUp',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const WelcomePage(),
        '/register': (BuildContext context) => RegisterPage(),
        '/login': (BuildContext context) => const LoginPage(),
        '/confirm_email': (BuildContext context) => const ConfirmEmail(),
        '/stats': (BuildContext context) => const StatsPage()
      },
    );
  }

}
