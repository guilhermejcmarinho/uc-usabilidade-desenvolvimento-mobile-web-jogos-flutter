import 'package:flutter/material.dart';
import 'package:uc_usabilidade_desenvolvimento_web_mobile_e_jogos_flutter/pratica18/routes/primeira_rota.dart';
import 'package:uc_usabilidade_desenvolvimento_web_mobile_e_jogos_flutter/pratica18/routes/segunda_rota.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrimeiraRota(),
      routes: {
        PrimeiraRota.routeName: (context) => PrimeiraRota(),
        SegundaRota.routeName: (context) => SegundaRota(),
      },
    );
  }
}
