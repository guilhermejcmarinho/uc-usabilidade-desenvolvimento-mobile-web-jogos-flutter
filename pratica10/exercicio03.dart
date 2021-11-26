import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController comprimento = TextEditingController();
  TextEditingController largura = TextEditingController();
  TextEditingController altura = TextEditingController();
  String resp = "";

  calcularVolume() {
    double comprimento =
        double.parse(this.comprimento.text.replaceAll(',', '.'));
    double largura = double.parse(this.largura.text.replaceAll(',', '.'));
    double altura = double.parse(this.largura.text.replaceAll(',', '.'));

    String volume = (comprimento * largura * altura).toStringAsFixed(2);

    this.resp = '$comprimento * $largura * $altura = $volume';

    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: comprimento,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => comprimento.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe o comprimento do sólido',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: largura,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => largura.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe a largura do sólido',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: altura,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => altura.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'informe a altura do sólido',
              ),
            ),
          ),
          Text('\n\n'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                child: ElevatedButton(
                  onPressed: () {
                    print(calcularVolume());
                    setState(calcularVolume);
                  },
                  child: Text(
                    'Calcular volume',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text('\n\n'),
          Container(
            alignment: AlignmentDirectional.center,
            child: Text(
              this.resp,
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
