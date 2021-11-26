import 'package:flutter/material.dart';

class TerceiraRota extends StatelessWidget {
  final String titulo;
  final String descricao;
  final double preco;
  final String url;
  TerceiraRota({
    required this.titulo,
    required this.descricao,
    required this.preco,
    required this.url,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      //margin: EdgeInsets.fromLTRB(30, 5, 30, 15),
      child: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(4, 50, 4, 4),
                child: Image(
                  image: NetworkImage(this.url),
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
                  style: TextStyle(fontSize: 12),
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
                children: <Widget>[
                  TextButton(
                    child: Text('Voltar para a Segunda Rota'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
