import 'package:flutter/material.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PrimeiraRota(),
      routes: {
        SegundaRota.caminhoDaRota: (context) => SegundaRota(),
        TerceiraRota.caminhoDaRota: (context) => TerceiraRota(),
      },
    );
  }
}

class PrimeiraRota extends StatelessWidget {
  final TextEditingController valorEmRealController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valor em Real'),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: valorEmRealController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => valorEmRealController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe o valor em Real',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                label: const Text('Próximo'),
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    SegundaRota.caminhoDaRota,
                    arguments: ArgumentosDaSegundaRota(
                      'Cotação',
                      double.parse(valorEmRealController.text),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  static const caminhoDaRota = '/segundaRota';
  final TextEditingController cotacaoDoDolarController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    ArgumentosDaSegundaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaSegundaRota;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: cotacaoDoDolarController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => cotacaoDoDolarController.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe a cotação do Dólar',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                label: const Text('Próximo'),
                icon: Icon(Icons.navigate_next),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    TerceiraRota.caminhoDaRota,
                    arguments: ArgumentosDaTerceiraRota(
                      'Resultado',
                      argumentos.reais,
                      double.parse(cotacaoDoDolarController.text),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TerceiraRota extends StatelessWidget {
  static const caminhoDaRota = '/terceiraRota';

  converter(double reais, double dolar) => reais / dolar;

  @override
  Widget build(BuildContext context) {
    ArgumentosDaTerceiraRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaTerceiraRota;
    return Scaffold(
      appBar: AppBar(
        title: Text(argumentos.titulo),
      ),
      body: Center(
        child: Center(
          child: Text(
            'R\$ ${argumentos.reais.toStringAsFixed(2)} = US\$ ${converter(argumentos.reais, argumentos.dolar).toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaSegundaRota {
  String titulo;
  double reais;
  ArgumentosDaSegundaRota(this.titulo, this.reais);
}

class ArgumentosDaTerceiraRota {
  String titulo;
  double reais;
  double dolar;
  ArgumentosDaTerceiraRota(this.titulo, this.reais, this.dolar);
}
