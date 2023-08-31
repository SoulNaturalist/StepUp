import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ConfirmEmail extends StatefulWidget {
  const ConfirmEmail({ Key? key }) : super(key: key);

  @override
  _ConfirmEmailState createState() => _ConfirmEmailState();
}

class _ConfirmEmailState extends State<ConfirmEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 140),//confirm_email.png
          child:Image(
      image: AssetImage("assets/images/confirm_email.png"),
      width: 150,
    ),
        ),
        Padding(
                padding: const EdgeInsets.only(top: 60),
                child:RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text:"Отлично, осталось только подтвердить вашу почту, на неё пришла ссылка перейдите по ней.",
                    style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
        ),
      ],
    ));
  }
}