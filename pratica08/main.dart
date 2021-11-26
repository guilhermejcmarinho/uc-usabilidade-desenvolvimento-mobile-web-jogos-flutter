import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página inicial'),
        leading: Icon(Icons.home),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(100),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
          ),
          child: Image(
            image: NetworkImage(
                'https://media.giphy.com/media/pt0EKLDJmVvlS/giphy.gif'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Exemplo de botao',
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.blue[900],
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
    );
  }
}
