import 'package:flutter/material.dart';
import 'descricao.dart';

class Foto extends StatelessWidget {
  final String url, tituloPagina, tituloDescricao, descricao;

  Foto(this.url, this.tituloPagina, this.tituloDescricao, this.descricao);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Image.network(url),
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Descricao(tituloPagina, tituloDescricao, descricao)),
      ),
    );
  }
}
