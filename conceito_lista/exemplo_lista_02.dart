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

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  List<Cartao> cartoes = [];
  int numero = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de contatos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          cartoes.add(Cartao("$numero Maria Luiza", "maria@bol.com.br"));
          numero = numero + 1;
          setState(() {});
        },
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
