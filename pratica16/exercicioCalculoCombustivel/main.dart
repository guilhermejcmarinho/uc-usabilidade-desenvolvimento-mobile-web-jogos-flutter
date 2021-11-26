import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: PrimeiraRota(),
      ),
    );

class Mensagem {
  String titulo;
  String texto;
  Mensagem(this.titulo, this.texto);
}

class Preco {
  double etanol;
  double gasolina;
  Preco(this.etanol, this.gasolina);
  razao() => etanol / gasolina;
}

class PrimeiraRota extends StatefulWidget {
  PrimeiraRotaState createState() {
    return PrimeiraRotaState('');
  }
}

class PrimeiraRotaState extends State<PrimeiraRota> {
  String melhorCombustivel;
  PrimeiraRotaState(this.melhorCombustivel);
  final TextEditingController precoEtanol = TextEditingController();
  final TextEditingController precoGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Primeira Rota"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: precoEtanol,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => precoEtanol.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o preço do etanol',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: precoGasolina,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => precoGasolina.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o preço da gasolina',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Preco preco = Preco(
                double.parse(precoEtanol.text),
                double.parse(precoGasolina.text),
              );

              Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SegundaRota(preco)))
                  .then((resposta) {
                setState(() {
                  melhorCombustivel = resposta;
                });
              });
            },
            child: Text('Ir para a Segunda Rota'),
          ),
          Text(
            melhorCombustivel,
            style: TextStyle(
              fontSize: 40,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  final Preco preco;
  late Mensagem mensagem;
  SegundaRota(this.preco) {
    calculaMelhorCombustivel();
  }

  calculaMelhorCombustivel() {
    String melhorCombustivel = 'Abasteça com etanol';
    String calculo =
        '${preco.etanol.toStringAsFixed(2)} / ${preco.gasolina.toStringAsFixed(2)} = ${preco.razao().toStringAsFixed(2)}';

    if (preco.razao() >= 0.7) {
      melhorCombustivel = 'Abasteça com gasolina';
    }

    mensagem = Mensagem(calculo, melhorCombustivel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Rota'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '${mensagem.titulo}',
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${mensagem.texto}',
              style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
              child: Text('Ir para a Primeira Rota'),
              onPressed: () {
                Navigator.pop(context, mensagem.texto);
              },
            ),
          ],
        ),
      ),
    );
  }
}
