import 'package:flutter/material.dart';

class ConfirmEmail extends StatefulWidget {
  const ConfirmEmail({ Key? key }) : super(key: key);

  @override
  _ConfirmEmailState createState() => _ConfirmEmailState();
}

class _ConfirmEmailState extends State<ConfirmEmail> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 140),
          child:Image.network("https://cdn-icons-png.flaticon.com/512/1/1284.png",width:150)
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
    );
  }
}