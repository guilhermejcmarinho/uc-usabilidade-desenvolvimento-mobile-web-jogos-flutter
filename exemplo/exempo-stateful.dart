import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int numeroVezes = 0;

  void incrementa() {
    setState(() {
      numeroVezes = numeroVezes + 1;
      print(numeroVezes);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula - 16/09/2021"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("O número de vezes que o botão foi pressionado $numeroVezes"),
            TextField(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementa,
        child: Icon(Icons.add),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Aula Widgets',
    home: Home(),
  ));
}
