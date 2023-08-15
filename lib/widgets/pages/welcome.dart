import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, left: 10, right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/welcome_background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textDirection: TextDirection.ltr,
              text: TextSpan(
                text:
                    "StepUp - это ваш надежный спутник для здорового образа жизни и активности. Это мощное приложение-шагомер, которое поможет вам следить за вашей физической активностью и достигать ваших фитнес-целей.",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.topCenter,
              child: OutlinedButton(
                child: Text("Регистрация"),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              alignment: Alignment.topCenter,
              child: OutlinedButton(
                child: Text("Авторизация"),
                onPressed: () {
                  Navigator.pushNamed(context, '/auth');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
