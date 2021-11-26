import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Cartao extends StatelessWidget {
  final String nome;
  final String email;

  Cartao(this.nome, this.email);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.cyanAccent,
      child: ListTile(title: Text(nome), subtitle: Text(email)),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Cartao> cartoes = [];
    cartoes.add(Cartao("Maria Luiza", "maria@bol.com.br"));
    cartoes.add(Cartao("José da Silva", "zedasilva@bol.com.br"));
    cartoes.add(Cartao("José da Silva", "zedasilva@bol.com.br"));

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de contatos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: cartoes.length,
          itemBuilder: (context, index) {
            return cartoes[index];
          }),
    );
  }
}
