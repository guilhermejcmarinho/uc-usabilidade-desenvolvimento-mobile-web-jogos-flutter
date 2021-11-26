import 'package:flutter/material.dart';
import 'package:uc_usabilidade_desenvolvimento_web_mobile_e_jogos_flutter/pratica19/components/cartao.dart';
import 'package:uc_usabilidade_desenvolvimento_web_mobile_e_jogos_flutter/pratica19/models/transporte.dart';

class RotaGenerica extends StatelessWidget {
  const RotaGenerica({
    Key? key,
    required this.transporte,
  }) : super(key: key);

  final Transporte transporte;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.transporte.titulo),
      ),
      body: Center(
        child: Column(
          children: [
            Cartao(this.transporte),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Voltar para a primeira rota'),
            )
          ],
        ),
      ),
    );
  }
}
