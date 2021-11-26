import 'package:flutter/material.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int indice = 0;

  static List<Widget> telas = <Widget>[
    Image.network(
      'https://images.unsplash.com/photo-1547721064-da6cfb341d50',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    ),
    Image.network(
      'https://flutter.io/images/catalog-widget-placeholder.png',
      fit: BoxFit.cover,
      alignment: Alignment.center,
    ),
    Image.network(
      'https://image.freepik.com/fotos-gratis/visao-vertical-de-panquecas-caseiras-e-limao-canela-uma-xicara-de-cha-em-cores-diferentes_140725-54208.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    ),
  ];
  void selecionar(int indice) {
    setState(() => this.indice = indice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Center(child: telas.elementAt(this.indice)),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Cursos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Consultoria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning_rounded),
            label: 'Avaliação',
          ),
        ],
        currentIndex: this.indice,
        selectedItemColor: Colors.amber[800],
        onTap: selecionar,
      ),
    );
  }
}
