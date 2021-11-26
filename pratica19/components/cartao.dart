import 'package:flutter/material.dart';
import 'package:uc_usabilidade_desenvolvimento_web_mobile_e_jogos_flutter/pratica19/models/transporte.dart';

class Cartao extends StatelessWidget {
  final Transporte transporte;

  Cartao(this.transporte);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              this.transporte.icone,
              size: 128,
              color: Colors.grey[500],
            ),
            Text(
              this.transporte.titulo,
              style: TextStyle(
                fontSize: 40,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
