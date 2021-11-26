import 'package:flutter/material.dart';
import 'package:uc_usabilidade_desenvolvimento_web_mobile_e_jogos_flutter/pratica21/rotas/quarta_rota.dart';
import 'package:uc_usabilidade_desenvolvimento_web_mobile_e_jogos_flutter/pratica21/rotas/terceira_rota.dart';

class Cartao extends StatelessWidget {
  final String titulo;
  final String descricao;
  final double preco;
  final String url;
  Cartao({
    required this.titulo,
    required this.descricao,
    required this.preco,
    required this.url,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      margin: EdgeInsets.fromLTRB(30, 5, 30, 15),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4),
              child: Image(
                image: NetworkImage(this.url),
                height: 200,
                width: 400,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                this.titulo,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                this.descricao,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                'R\$ ${this.preco.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  child: Text('DETALHES'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TerceiraRota(
                          titulo: this.titulo,
                          descricao: this.descricao,
                          preco: this.preco,
                          url: this.url,
                        ),
                      ),
                    );
                  },
                ),
                TextButton(
                  child: Text('COMPRAR'),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuartaRota()),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
