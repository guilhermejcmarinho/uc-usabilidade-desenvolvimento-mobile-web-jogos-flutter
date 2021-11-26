import 'package:flutter/material.dart';

void main() {
  String nome = "Gabriel";
  String diaDaSemana = "quinta-feira";

  runApp(
    Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: RichText(
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Olá, ",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.white,
                ), //TextStyle.
                children: <TextSpan>[
                  TextSpan(
                    text: '$nome',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      decorationStyle: TextDecorationStyle.dotted,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  TextSpan(text: '!'),
                  TextSpan(
                    text: '\nHoje é $diaDaSemana!',
                    style: TextStyle(
                      color: Colors.red,
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                  TextSpan(
                    text: '\nBom dia!',
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: RichText(
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '\n\n Hoje, você terá que escrever um aplicativo em Flutter. ' +
                    'O aplicativo deve imprimir um texto na tela. O texto possui ' +
                    'trechos e com estilos diferentes.',
                style: TextStyle(
                  color: Colors.white,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '\n\n\n\n\nBoa prática!',
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                  TextSpan(
                    text: '\n=',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  TextSpan(
                    text: 'D',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(text: 'H'),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
