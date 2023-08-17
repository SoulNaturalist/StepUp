import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
      decoration: const BoxDecoration(
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
              text: const TextSpan(
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
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 253, 219, 146)),
                child: const Text("Регистрация"),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 253, 219, 146)),
                child: const Text("Авторизация"),
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
