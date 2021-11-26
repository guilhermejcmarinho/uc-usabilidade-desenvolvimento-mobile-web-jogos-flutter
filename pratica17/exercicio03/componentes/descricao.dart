import 'package:flutter/material.dart';

class Descricao extends StatelessWidget {
  final String tituloPagina, tituloDescricao, descricao;

  Descricao(this.tituloPagina, this.tituloDescricao, this.descricao);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.tituloPagina),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                this.tituloDescricao,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
              margin: EdgeInsets.fromLTRB(80, 80, 80, 0),
              alignment: AlignmentDirectional.center,
            ),
            Container(
              child: Text(
                this.descricao,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              margin: EdgeInsets.all(80),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () => {
          Navigator.pop(context),
        },
        child: Icon(
          Icons.arrow_back,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
