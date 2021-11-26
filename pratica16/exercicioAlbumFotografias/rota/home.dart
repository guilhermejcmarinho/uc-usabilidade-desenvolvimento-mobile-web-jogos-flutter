import 'package:flutter/material.dart';
import 'lista/listaFotos.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: cartoes.length,
        itemBuilder: (context, index) {
          return cartoes[index];
        },
      ),
    );
  }
}
